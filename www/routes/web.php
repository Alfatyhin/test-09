<?php

use App\Http\Controllers\Controller;
use App\Http\Controllers\DepartamentsController;
use App\Http\Controllers\StaffController;
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

Route::get('/', [Controller::class, 'index'])
    ->name('index');

///////////////////////////////////////////////////////////////////////////
Route::get('/departaments', [DepartamentsController::class, 'index'])
    ->name('departaments_index');

Route::get('/departaments-edit{departament}', [DepartamentsController::class, 'edit'])
    ->name('departaments_edit');

Route::get('/departaments-update{departament}', [DepartamentsController::class, 'update'])
    ->name('departaments_update');

Route::get('/departaments-add', [DepartamentsController::class, 'update'])
    ->name('departaments_add');

Route::get('/departaments-craete', [DepartamentsController::class, 'create'])
    ->name('departaments_create');

Route::get('/departaments-delete{departament}', [DepartamentsController::class, 'destroy'])
    ->name('departaments_delete');



//////////////////////////////////////////////////////////////////////////
Route::get('/staff', [StaffController::class, 'index'])
    ->name('staff_index');

Route::get('/staff-edit{staff}', [StaffController::class, 'edit'])
    ->name('staff_edit');

Route::get('/staff-create', [StaffController::class, 'create'])
    ->name('staff_create');

Route::get('/staff-update{staff}', [StaffController::class, 'update'])
    ->name('staff_update');

Route::get('/staff-add', [StaffController::class, 'update'])
    ->name('staff_add');

Route::get('/staff-delete{staff}', [StaffController::class, 'destroy'])
    ->name('staff_delete');
