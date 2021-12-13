<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\GoogleController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserlistController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ChartController;
use App\Http\Controllers\PiechartController;



Route::get('/', function () {
    return view('welcome');
});
// Route::get('/sadmin', function () {
//     return view('admin.admin');
// });


Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
// Route::get('/chart', [UserlistController::class, 'chartos'])->name('chart');
Route::get('/chart', [ChartController::class, 'index'])->name('chart');
Route::get('/order', [OrderController::class, 'index'])->name('order');
Route::get('/piechart', [PiechartController::class, 'piechart']);


// Google URL
Route::prefix('google')->name('google.')->group( function(){
    Route::get('login', [GoogleController::class, 'loginWithGoogle'])->name('login');
    Route::any('callback', [GoogleController::class, 'callbackFromGoogle'])->name('callback');
});