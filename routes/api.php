<?php

use App\Http\Controllers\Api\Admin\AdminController;
use App\Http\Controllers\Api\Admin\AuthController as AdminAuthController;
use App\Http\Controllers\Api\Customer\AuthController as CustomerAuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Global CORS for all API routes
Route::options('{any}', function () {
    return response()->json('OK', 200, [
        'Access-Control-Allow-Origin'  => '*',
        'Access-Control-Allow-Methods' => 'GET, POST, PUT, PATCH, DELETE, OPTIONS',
        'Access-Control-Allow-Headers' => 'Content-Type, Authorization, X-Requested-With',
    ]);
})->where('any', '.*');

// Admin Auth Routes
Route::prefix('admin')->group(function () {
    Route::post('/login',    [AdminAuthController::class, 'login']);
    Route::post('/register', [AdminAuthController::class, 'register']);

    Route::middleware('auth:sanctum')->group(function () {
        Route::post('/logout', [AdminAuthController::class, 'logout']);
        Route::get('/user',    [AdminAuthController::class, 'user']);

        // Admin Dashboard Data Routes
        Route::get('/dashboard',                [AdminController::class, 'dashboard']);
        Route::get('/customers',                [AdminController::class, 'customers']);
        Route::get('/contacts',                 [AdminController::class, 'contacts']);
        Route::patch('/contacts/{id}/status',   [AdminController::class, 'updateContactStatus']);
        Route::patch('/contacts/{id}/complete', [AdminController::class, 'completeContact']);
        Route::patch('/contacts/{id}/note',     [AdminController::class, 'updateContactNote']);
    });
});

// Public Contact Submission Route
Route::post('/contact/submit', function (Request $request) {
    $validated = $request->validate([
        'name'    => 'required|string|min:2|max:100|regex:/^[A-Za-z\s\.\-\']+$/',
        'email'   => 'required|email|max:150',
        'phone'   => 'required|string|min:7|max:20|regex:/^[\+]?[0-9\s\-\(\)]+$/',
        'service' => 'nullable|string|max:100',
        'message' => 'required|string|min:10|max:3000',
    ]);

    $contact = \App\Models\ContactSubmission::create([
        'name'    => ucwords(strtolower(trim($validated['name']))),
        'email'   => strtolower(trim($validated['email'])),
        'phone'   => isset($validated['phone']) ? trim($validated['phone']) : null,
        'service' => isset($validated['service']) ? trim($validated['service']) : null,
        'message' => trim($validated['message']),
        'status'  => 'new',
    ]);

    return response()->json(['success' => true, 'message' => 'Submission saved successfully', 'contact' => $contact], 201);
});
