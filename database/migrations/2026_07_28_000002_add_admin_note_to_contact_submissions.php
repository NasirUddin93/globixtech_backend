<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('contact_submissions', function (Blueprint $table) {
            $table->text('admin_note')->nullable()->after('status');
            $table->timestamp('completed_at')->nullable()->after('admin_note');
        });
    }

    public function down(): void
    {
        Schema::table('contact_submissions', function (Blueprint $table) {
            $table->dropColumn(['admin_note', 'completed_at']);
        });
    }
};
