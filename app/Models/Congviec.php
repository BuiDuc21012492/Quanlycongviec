<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Congviec extends Model
{
    protected $table = 'congviec';
    protected $primaryKey = 'MaCV';
    protected $keyType = 'string';
    protected $fillable = ['MaCV', 'Tieude', 'Noidung', 'Ngaytao', 'Maphongban', 'Manguoitao'];
    // public $incrementing = false;  // Có thể bỏ, vì keyType là string

    public $timestamps = false; // Hoặc true, tùy thuộc vào bảng của bạn
}