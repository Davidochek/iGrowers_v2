<?php

use App\Http\Controllers\DiseasesController;
use App\Http\Controllers\MarketController;
use App\Http\Controllers\PestsController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\ServicesController;
use App\Http\Controllers\User\AdminsController;
use App\Http\Controllers\User\BuyersController;
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

Route::get('/', function () {
    return view('crops.home');
});



Route::get('/home', HomeComponent::class)->name('home');
Route::get('/pests', [PestsController::class, 'index'])->name('pests');
Route::get('/diseases', [DiseasesController::class, 'index'])->name('diseases');
// Route::get('/market', [MarketController::class, 'index'])->name('market');
Route::get('/marketdetails', [MarketController::class, 'marketdetails'])->name('marketdetails');
Route::get('/services', [ServicesController::class, 'index'])->name('services');
Route::get('/autocomplete', [SearchController::class, 'autocomplete'])->name('autocomplete');
Route::post('/searchPest', [SearchController::class, 'searchPest'])->name('searchPest');
Route::post('/searchDisease', [SearchController::class, 'searchDisease'])->name('searchDisease');
Route::get('/showPests/{pest_slug}', [SearchController::class, 'showPests'])->name('showPests');
Route::get('/showDiseases/{disease_slug}', [SearchController::class, 'showDiseases'])->name('showDiseases');
Route::get('/showPestDetails/{id}', [SearchController::class, 'showPestDetails'])->name('showPestDetails');
Route::get('/showDiseaseDetails/{id}', [SearchController::class, 'showDiseaseDetails'])->name('showDiseaseDetails');
Route::get('/searchPests', [SearchController::class, 'searchPests'])->name('searchPests');
// Route::resource('/market', MarketController::class);
Auth::routes();

Route::prefix('buyer')->name('buyers.')->group(function(){
Route::middleware(['guest:buyer', 'PreventBackHistory'])->group(function(){
Route::view('/login', 'buyers.login')->name('login');
Route::view('/register', 'buyers.register')->name('register');
Route::post('/create', [BuyersController::class, 'create'])->name('create');
Route::post('/check', [BuyersController::class, 'check'])->name('check');
});
Route::middleware(['auth:buyer', 'PreventBackHistory'])->group(function(){
Route::view('/home', 'buyers.home')->name('home');
Route::post('logout', [BuyersController::class, 'logout'])->name('logout');
});
});

Route::prefix('admin')->name('admins.')->group(function(){
Route::middleware(['guest:admin', 'PreventBackHistory'])->group(function(){
Route::view('/login', 'admins.login')->name('login');
Route::view('/register', 'admins.register')->name('register');
Route::post('/create', [AdminsController::class, 'create'])->name('create');
Route::post('/check', [AdminsController::class, 'check'])->name('check');
});
Route::middleware(['auth:admin', 'PreventBackHistory'])->group(function(){
Route::view('/home', 'admins.home')->name('home');
Route::post('logout', [AdminsController::class, 'logout'])->name('logout');
Route::view('register-crop', 'admins.register-crop')->name('register-crop');
Route::view('register-farmer', 'admins.register-farmer')->name('register-farmer');
});
});
// Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::resource('/market', MarketController::class, [
    'only' => ['index', 'store']
]);
