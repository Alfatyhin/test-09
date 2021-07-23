<?php

namespace App\Http\Controllers;

use App\Models\Departaments;
use App\Models\Staff;
use App\Models\StaffDepartaments;
use Illuminate\Http\Request;

class DepartamentsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $departaments = Departaments::all();

        foreach ($departaments as $departament) {

            $staffDep = StaffDepartaments::where('departament_id', $departament->id)
                ->pluck('staff_id')
                ->toArray();

            $maxSalary[$departament->id] = Staff::whereIn('id', $staffDep)->max('salary');

        }


        return view('departaments.index', [
            'departaments' => $departaments,
            'maxSalary' => $maxSalary,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('departaments.add');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required'
        ]);
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Departaments  $departament
     * @return \Illuminate\Http\Response
     */
    public function edit(Departaments $departament)
    {

        return view('departaments.add', [
            'departament' => $departament
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Departaments  $departament
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Departaments $departament)
    {
        $this->store($request);

        $departament->name = $request->get('name');
        $departament->save();

        return (redirect('/departaments'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Departaments  $departament
     * @return \Illuminate\Http\Response
     */
    public function destroy(Departaments $departament)
    {
        if ($departament->staff_count <= 0) {
            $departament->delete();
        }

        return redirect('/departaments');
    }
}
