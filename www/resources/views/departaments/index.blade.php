
@extends('layouts.master')

@section('title', 'departaments')

@section('sidebar')
    @parent

@stop

@section('content')
    <div class="content">
       <h2>Отделы</h2>

        <p>
            <a class="button" href="{{ route('departaments_create') }}"> добавить отдел </a>
        </p>
        <table>
            <tr>
                <th>
                    Отдел
                </th>
                <th>
                    Количество сотрудников
                </th>
                <th>
                    Максимальная заработная плата
                </th>
                <th>

                </th>

            </tr>


                @foreach($departaments as $departament)
                <tr>
                    <td>
                        {{ $departament->name }}
                    </td>
                    <td>
                        {{ $departament->staff_count }}
                    </td>
                    <td>
                        {{ $maxSalary[$departament->id] }}
                    </td>
                    <td>
                        <a class="button" href="{{ route('departaments_edit', ['departament' => $departament]) }}">редактировать</a>
                        <br>
                        <a class="button" href="{{ route('departaments_delete',  ['departament' => $departament]) }}">удалить</a>
                    </td>

                </tr>
                @endforeach

        </table>

    </div>
@stop


