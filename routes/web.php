<?php

use App\Http\Controllers\DiseasesController;
use App\Http\Controllers\MarketController;
use App\Http\Controllers\PestsController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\ServicesController;
use App\Http\Livewire\HomeComponent;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', HomeComponent::class)->name('home');
Route::get('/pests', [PestsController::class, 'index'])->name('pests');
Route::get('/diseases', [DiseasesController::class, 'index'])->name('diseases');
Route::get('/market', [MarketController::class, 'index'])->name('market');
Route::get('/services', [ServicesController::class, 'index'])->name('services');
Route::get('/autocomplete', [SearchController::class, 'autocomplete'])->name('autocomplete');
Route::post('/searchPest', [SearchController::class, 'searchPest'])->name('searchPest');
Route::post('/searchDisease', [SearchController::class, 'searchDisease'])->name('searchDisease');
Route::get('/showPests/{pest_slug}', [SearchController::class, 'showPests'])->name('showPests');
Route::get('/showDiseases/{disease_slug}', [SearchController::class, 'showDiseases'])->name('showDiseases');
Route::get('/showPestDetails/{id}', [SearchController::class, 'showPestDetails'])->name('showPestDetails');
Route::get('/showDiseaseDetails/{id}', [SearchController::class, 'showDiseaseDetails'])->name('showDiseaseDetails');
Route::get('/searchPests', [SearchController::class, 'searchPests'])->name('searchPests');