<?php

namespace Database\Seeders;

use App\Models\ContactSubmission;
use Illuminate\Database\Seeder;

class ContactSubmissionSeeder extends Seeder
{
    public function run(): void
    {
        $contacts = [
            [
                'name'    => 'Rahim Uddin',
                'email'   => 'rahim.uddin@acmecorp.com.bd',
                'phone'   => '+8801711234567',
                'company' => 'Acme Corp BD',
                'service' => 'ERP System',
                'message' => 'We are looking for a comprehensive ERP solution for our manufacturing unit. Interested in inventory, HR, and accounts modules.',
                'status'  => 'replied',
                'admin_note' => 'Had an initial consultation meeting. Sent project proposal and quotation for ERP modules.',
                'completed_at' => now()->subDays(44),
                'created_at' => now()->subDays(45),
            ],
            [
                'name'    => 'Fatema Khatun',
                'email'   => 'fatema.khatun@techwave.bd',
                'phone'   => '+8801821345678',
                'company' => 'TechWave BD',
                'service' => 'Web Application',
                'message' => 'We need a custom web portal for our e-commerce business with payment gateway integration.',
                'status'  => 'replied',
                'admin_note' => 'Discussed scope of e-commerce web portal and payment gateway requirement. Client agreed on wireframes.',
                'completed_at' => now()->subDays(37),
                'created_at' => now()->subDays(38),
            ],
            [
                'name'    => 'Mahbub Hossain',
                'email'   => 'mahbub.h@nexusbd.com',
                'phone'   => '+8801912456789',
                'company' => 'Nexus BD',
                'service' => 'School Management System',
                'message' => 'Our school needs a complete management system covering admissions, attendance, results, and fee management.',
                'status'  => 'read',
                'created_at' => now()->subDays(30),
            ],
            [
                'name'    => 'Nusrat Jahan',
                'email'   => 'nusrat.jahan@greenfintech.bd',
                'phone'   => '+8801634567890',
                'company' => 'Green FinTech',
                'service' => 'POS System',
                'message' => 'We run 3 retail branches and need a centralized POS system with real-time inventory sync across all locations.',
                'status'  => 'new',
                'created_at' => now()->subDays(22),
            ],
            [
                'name'    => 'Karim Sheikh',
                'email'   => 'karim.sheikh@bluelogistics.com',
                'phone'   => '+8801756789012',
                'company' => 'Blue Logistics',
                'service' => 'Mobile App Development',
                'message' => 'Need a delivery tracking mobile app for Android and iOS with real-time GPS for our logistics operations.',
                'status'  => 'new',
                'created_at' => now()->subDays(18),
            ],
            [
                'name'    => 'Sumaiya Begum',
                'email'   => 'sumaiya@innovateit.com.bd',
                'phone'   => '+8801898765432',
                'company' => 'InnovateIT',
                'service' => 'IT Consulting',
                'message' => 'We are a startup looking for IT infrastructure consultancy and cloud server setup guidance.',
                'status'  => 'replied',
                'admin_note' => 'Provided cloud infrastructure architecture plan and server setup guidelines.',
                'completed_at' => now()->subDays(14),
                'created_at' => now()->subDays(15),
            ],
            [
                'name'    => 'Tariq Aziz',
                'email'   => 'tariq.aziz@starretail.bd',
                'phone'   => '+8801512345678',
                'company' => 'Star Retail BD',
                'service' => 'E-Commerce Solution',
                'message' => 'We want to launch an online store with multi-vendor support, multiple payment gateways, and an admin panel.',
                'status'  => 'new',
                'created_at' => now()->subDays(12),
            ],
            [
                'name'    => 'Razia Sultana',
                'email'   => 'razia.sultana@ecomart.com.bd',
                'phone'   => '+8801678901234',
                'company' => 'EcoMart',
                'service' => 'Inventory Management',
                'message' => 'Looking for an inventory management system that integrates with barcodes and provides low-stock alerts.',
                'status'  => 'read',
                'created_at' => now()->subDays(9),
            ],
            [
                'name'    => 'Jalal Ahmed',
                'email'   => 'jalal.ahmed@prospergroup.bd',
                'phone'   => '+8801734567890',
                'company' => 'Prosper Group',
                'service' => 'Business AI',
                'message' => 'Interested in AI-powered sales forecasting and customer analytics for our retail group.',
                'status'  => 'new',
                'created_at' => now()->subDays(6),
            ],
            [
                'name'    => 'Shirin Akter',
                'email'   => 'shirin.akter@pixelstudio.bd',
                'phone'   => '+8801856789012',
                'company' => 'Pixel Studio',
                'service' => 'Web Application',
                'message' => 'We are a design agency looking for a project management web app with client portal features.',
                'status'  => 'new',
                'created_at' => now()->subDays(4),
            ],
            [
                'name'    => 'Nur Islam',
                'email'   => 'nur.islam@deltafarms.com.bd',
                'phone'   => '+8801923456789',
                'company' => 'Delta Farms',
                'service' => 'Accounting Software',
                'message' => 'Our agro-business needs accounting software that handles VAT, supply chain billing, and payroll.',
                'status'  => 'new',
                'created_at' => now()->subDays(2),
            ],
            [
                'name'    => 'Halima Begum',
                'email'   => 'halima@crescenteduc.bd',
                'phone'   => '+8801645678901',
                'company' => 'Crescent Education',
                'service' => 'School Management System',
                'message' => 'Looking for an SMS with online exam portal and parent communication features for our coaching centre.',
                'status'  => 'new',
                'created_at' => now()->subHours(8),
            ],
        ];

        foreach ($contacts as $contact) {
            ContactSubmission::updateOrCreate(
                ['email' => $contact['email'], 'service' => $contact['service']],
                $contact
            );
        }
    }
}
