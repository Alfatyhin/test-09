<?php

namespace App\Http\Controllers;

use App\Models\Departaments;
use App\Models\Staff;
use App\Models\StaffDepartaments;
use App\Services\AppService;
use Illuminate\Http\Request;

class StaffController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $departamentes = Departaments::pluck('name', 'id')->toArray();
        $genders = AppService::getGenders();

        // так как я не полячил ответа что так нельзя
        // то иду более простым путем
        $staff = Staff::orderBy('id', 'desc')->paginate(20);

        // чтоб меньше логики было в швблоне
        foreach ($staff as $item) {
            $array = json_decode($item->departaments, true);
            foreach ($array as $departamentKey) {
                $departamentArray[] = $departamentes[$departamentKey];
            }
            $item->departaments = implode(', ', $departamentArray);
            unset($departamentArray);
        }


        return view('staff.index', [
            'staff' => $staff,
            'genders' => $genders,
        ]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $genders = AppService::getGenders();
        $departamentes = Departaments::pluck('name', 'id')->toArray();

        return view('staff.add', [
            'genders' => $genders,
            'departaments' => $departamentes,
        ]);
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
            'first_name' => 'required',
            'last_name'  => 'required',
            'gender' => 'regex:/^[12]$/',
            'salary' => 'integer',
            'departaments' => 'required|array',
        ]);

    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Staff  $staff
     * @return \Illuminate\Http\Response
     */
    public function edit(Staff $staff)
    {
        $genders = AppService::getGenders();
        $departamentes = Departaments::pluck('name', 'id')->toArray();

        $staffDepartaments = array_flip(json_decode($staff->departaments, true));

        return view('staff.add', [
            'staff' => $staff,
            'genders' => $genders,
            'departaments' => $departamentes,
            'staffDepartaments' => $staffDepartaments
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Staff  $staff
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Staff $staff)
    {
        $this->store($request);

        $oldDeps = json_decode($staff->departaments);

        $staff->first_name   = $request->get('first_name');
        $staff->last_name    = $request->get('last_name');
        $staff->middle_name  = $request->get('middle_name');
        $staff->gender       = $request->get('gender');
        $staff->salary       = $request->get('salary');
        $staff->departaments = json_encode($request->get('departaments'));

        $res = $staff->save();


        if ($res) {

            $newDeps = $request->get('departaments');
            $minusDepsStaffCount = array_diff($oldDeps, $newDeps);
            $plusDepsStaffCount = array_diff($newDeps, $oldDeps);

            if ($minusDepsStaffCount) {
                foreach ($minusDepsStaffCount as $depId) {
                    $departament = Departaments::find($depId);
                    $departament->staff_count--;
                    $departament->save();

                    $stafDeps = StaffDepartaments::where('departament_id', $depId)
                        ->where('staff_id', $staff->id)->first();
                    $stafDeps->delete();
                }
            }

            if ($plusDepsStaffCount) {
                foreach ($plusDepsStaffCount as $depId) {
                    $departament  = Departaments::find($depId);
                    $departament->staff_count++;
                    $departament->save();

                    $stafDeps = new StaffDepartaments();
                    $stafDeps->staff_id = $staff->id;
                    $stafDeps->departament_id = $depId;
                    $stafDeps->save();
                }
            }

            return (redirect('staff'));

        }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Staff  $staff
     * @return \Illuminate\Http\Response
     */
    public function destroy(Staff $staff)
    {
        $depsIds = json_decode($staff->departaments);
        foreach ($depsIds as $depId) {
            $departament = Departaments::find($depId);
            $departament->staff_count--;
            $departament->save();
        }
        $staff->delete();
        return (redirect('staff'));
    }
}
