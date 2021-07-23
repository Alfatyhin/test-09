
@extends('layouts.master')

@section('title', 'staff-add')

@section('sidebar')
    @parent

@stop

@section('content')
    <div class="content">
        @isset($staff)
            <h2> Редактировать </h2>
        @else
            <h2> Добавить </h2>
        @endisset

        <form action="@isset($staff)
        {{ route('staff_update', ['staff' => $staff]) }}
            @else
        {{ route('staff_add') }}
        @endisset" method="get">
            @csrf
        <table>
            <tr>
                <td>
                    Имя
                </td>
                <td>

                    <input id="first_name" type="text" name="first_name"
                           class="@error('first_name') is-invalid @enderror"
                           value="@isset($staff->first_name){{ $staff->first_name }}@endisset" />

                    @error('first_name')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror

                </td>
            </tr>
            <tr>
                <td>
                    Фамилия
                </td>
                <td>
                    <input id="last_name" type="text" name="last_name"
                           class="@error('last_name') is-invalid @enderror"
                           value="@isset($staff->last_name){{ $staff->last_name }}@endisset" />

                    @error('last_name')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </td>
            </tr>
            <tr>
                <td>
                    Отчество
                </td>
                <td>

                    <input id="middle_name" type="text" name="middle_name"
                           class="@error('middle_name') is-invalid @enderror"
                           value="@isset($staff->middle_name){{ $staff->middle_name }}@endisset" />

                    @error('middle_name')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror

                </td>
            </tr>
            <tr>
                <td>
                    Пол
                </td>
                <td>
                    <select id="gender" name="gender" class="@error('gender') is-invalid @enderror">
                    @foreach($genders as $key => $gender)

                        @if (isset($staff) && $staff->gender == $key)
                            <option value="{{ $key }}" selected>{{ $gender }}</option>
                        @else
                                <option value="{{ $key }}">{{ $gender }}</option>
                        @endif

                    @endforeach
                    </select>
                    @error('gender')
                        <div class="alert alert-danger">{{ $message }}</div>
                    @enderror
                </td>
            </tr>
            <tr>
                <td>
                    Заработная плата
                </td>
                <td>
                    <input id="salary" type="number" name="salary"
                           class="@error('salary') is-invalid @enderror"
                           value="@isset($staff->salary){{ $staff->salary }}@endisset" />

                    @error('salary')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror

                </td>
            </tr>
            <tr>
                <td>
                    Отделы
                </td>
                <td>

                    <select id="departaments" name="departaments[]"
                            class="@error('departaments') is-invalid @enderror" multiple>
                        @foreach($departaments as $key => $departament)
                            @isset ($staffDepartaments[$key])
                                <option value="{{ $key }}" selected>{{ $departament }}</option>
                            @else
                                <option value="{{ $key }}">{{ $departament }}</option>
                            @endisset

                        @endforeach
                    </select>
                    @error('departaments')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror

                </td>

            </tr>

            <tr>
                <td colspan="2">
                    @isset($staff)
                        <input class="button" type="submit" value="изменить" />
                    @else
                        <input class="button" type="submit" value="добавить" />
                    @endisset

                </td>
            </tr>
        </table>
        </form>

    </div>
@stop


