
@extends('layouts.master')

@section('title', 'home')

@section('sidebar')
    @parent

@stop

@section('content')
    <div class="content">
       <h2>Сетка</h2>

        <table>
            <tr>
                <th>

                </th>
                @foreach($departaments as $item)
                    <th>
                        {{ $item }}
                    </th>
                @endforeach
            </tr>


                @foreach($staff as $staffItem)
                <tr>
                    <td>
                        {{ $staffItem->first_name }} {{ $staffItem->last_name }}
                    </td>

                    @foreach($departaments as $id => $item)
                        <td>
                            @if(isset($staffItem->departaments[$id]))
                                ✓
                            @endif
                        </td>
                    @endforeach
                </tr>
                @endforeach

        </table>
        <div class="max-w-6xl mx-auto sm:px-6 lg:px-8 paginate">
            {{ $staff->links() }}
        </div>

    </div>
@stop


