<?php

namespace App\Http\Controllers\Api\Admin;

use App\Http\Controllers\Controller;
use App\Models\ContactSubmission;
use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    /**
     * Dashboard stats overview.
     */
    public function dashboard(): JsonResponse
    {
        $totalCustomers = User::where('type', 'customer')->count();
        $totalContacts  = ContactSubmission::count();
        $newContacts    = ContactSubmission::where('status', 'new')->count();
        $newThisMonth   = User::where('type', 'customer')
            ->whereMonth('created_at', now()->month)
            ->whereYear('created_at', now()->year)
            ->count();

        $recentContacts = ContactSubmission::latest()->take(5)->get();
        $recentCustomers = User::where('type', 'customer')->latest()->take(5)->get([
            'id', 'name', 'email', 'phone', 'address', 'created_at'
        ]);

        // Monthly contact trend (last 6 months)
        $trend = [];
        for ($i = 5; $i >= 0; $i--) {
            $date = now()->subMonths($i);
            $trend[] = [
                'month' => $date->format('M'),
                'count' => ContactSubmission::whereMonth('created_at', $date->month)
                    ->whereYear('created_at', $date->year)
                    ->count(),
            ];
        }

        return response()->json([
            'stats' => [
                'total_customers'  => $totalCustomers,
                'total_contacts'   => $totalContacts,
                'new_contacts'     => $newContacts,
                'new_this_month'   => $newThisMonth,
            ],
            'recent_contacts'  => $recentContacts,
            'recent_customers' => $recentCustomers,
            'trend'            => $trend,
        ]);
    }

    /**
     * List all customers.
     */
    public function customers(): JsonResponse
    {
        $customers = User::where('type', 'customer')
            ->latest()
            ->get(['id', 'name', 'email', 'phone', 'address', 'created_at']);

        return response()->json([
            'customers' => $customers,
            'total'     => $customers->count(),
        ]);
    }

    /**
     * List all contact submissions.
     */
    public function contacts(): JsonResponse
    {
        $contacts = ContactSubmission::latest()->get();

        return response()->json([
            'contacts' => $contacts,
            'total'    => $contacts->count(),
        ]);
    }

    /**
     * Update contact status.
     */
    public function updateContactStatus(Request $request, int $id): JsonResponse
    {
        $request->validate(['status' => 'required|in:new,read,replied,closed']);

        $contact = ContactSubmission::findOrFail($id);
        $data = ['status' => $request->status];

        // When marking as replied, auto-set completed_at.
        // When changing away from replied, clear completed_at so it needs explicit re-completion.
        if ($request->status === 'replied') {
            $data['completed_at'] = now();
        } elseif ($contact->status === 'replied' && $request->status !== 'replied') {
            $data['completed_at'] = null;
        }

        $contact->update($data);

        return response()->json(['message' => 'Status updated', 'contact' => $contact]);
    }

    /**
     * Mark contact as done with an admin note.
     */
    public function completeContact(Request $request, int $id): JsonResponse
    {
        $request->validate([
            'note' => 'required|string|min:1|max:2000',
        ]);

        $contact = ContactSubmission::findOrFail($id);
        $contact->update([
            'status'       => 'replied',
            'admin_note'   => trim($request->input('note')),
            'completed_at' => now(),
        ]);

        return response()->json(['message' => 'Contact marked as done', 'contact' => $contact]);
    }

    /**
     * Update only the admin note for a contact.
     */
    public function updateContactNote(Request $request, int $id): JsonResponse
    {
        $request->validate([
            'note' => 'nullable|string|max:2000',
        ]);

        $contact = ContactSubmission::findOrFail($id);
        $contact->update([
            'admin_note' => $request->input('note', ''),
        ]);

        return response()->json(['message' => 'Admin note updated', 'contact' => $contact]);
    }
}
