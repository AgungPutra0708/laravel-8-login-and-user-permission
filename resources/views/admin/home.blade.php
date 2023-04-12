@extends('admin.index')
@section('container')
    @can('isAdmin')
    <p>Ini Admin</p>
    @elsecan('isManager')
    <p>Ini Manager</p>
    @endcan
@endsection