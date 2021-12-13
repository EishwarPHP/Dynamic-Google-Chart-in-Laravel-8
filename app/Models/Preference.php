<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Preference extends Model
{
    use HasFactory;
    protected $fillable = [
        'userid',
        'pre_income',
        'pre_occupation',
        'pre_family_type',
        'pre_manglik'
    ];

}
