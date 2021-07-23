
@extends('layouts.master')

@section('title', 'departament-add')

@section('sidebar')
    @parent

@stop

@section('content')
    <div class="content">
        @isset($departament)
        <h2> Редактировать </h2>
        @else
            <h2> Создать отдел </h2>
        @endisset

        <form action="@isset($departament)
        {{ route('departaments_update', ['departament' => $departament]) }}
            @else
        {{ route('departaments_add') }}
        @endisset" method="get">

            @csrf
        <table>
            <tr>
                <td>
                    Имя
                </td>
                <td>

                    <input id="name" type="text" name="name"
                           class="@error('name') is-invalid @enderror"
                           value="@isset($departament->name){{ $departament->name }}@endisset" />

                    @error('name')
                    <div class="alert alert-danger">{{ $message }}</div>
                    @enderror

                </td>
            </tr>


            <tr>
                <td colspan="2">

                    @isset($departament)
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


