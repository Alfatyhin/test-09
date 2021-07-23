<?php

namespace App\Http\Controllers;


use App\Models\Departaments;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function index()
    {


        $departamentes = Departaments::pluck('name', 'id')->toArray();

        $staff = DB::table('staff')
            ->select('first_name', 'last_name', 'departaments')
            ->paginate(20);

        foreach ($staff as $item) {
            $item->departaments = array_flip(json_decode($item->departaments));
        }

        return view('index', [
            'staff' => $staff,
            'departaments' => $departamentes,
        ]);
    }
}
