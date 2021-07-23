
@extends('layouts.master')

@section('title', 'staff')

@section('sidebar')
    @parent

@stop

@section('content')
    <div class="content">
       <h2>Сотрудники</h2>

        <p>
            <a class="button" href="{{ route('staff_create') }}"> добавить сотрудника </a>
        </p>
        <table>
            <tr>
                <th>
                    Имя
                </th>
                <th>
                    Фамилия
                </th>
                <th>
                    Отчество
                </th>
                <th>
                    Пол
                </th>
                <th>
                    Заработная плата
                </th>
                <th>
                    Отделы
                </th>
                <th>

                </th>

            </tr>


                @foreach($staff as $staffItem)
                <tr>
                    <td>
                        {{ $staffItem->first_name }}
                    </td>
                    <td>
                        {{ $staffItem->last_name }}
                    </td>
                    <td>
                        {{ $staffItem->middle_name }}
                    </td>
                    <td>
                        {{ $genders[$staffItem->gender] }}
                    </td>
                    <td>
                        {{ $staffItem->salary }}
                    </td>
                    <td>
                        {{ $staffItem->departaments }}
                    </td>
                    <td>
                        <a class="button" href="{{ route('staff_edit', ['staff' => $staffItem]) }}">редактировать</a>
                        <br>
                        <a class="button" href="{{ route('staff_delete', ['staff' => $staffItem]) }}">удалить</a>
                    </td>


                </tr>
                @endforeach

        </table>
        <div class="max-w-6xl mx-auto sm:px-6 lg:px-8 paginate">
            {{ $staff->links() }}
        </div>

    </div>
@stop


