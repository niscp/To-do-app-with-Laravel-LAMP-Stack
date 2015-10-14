@extends('master')
 
@section('content')
 
 
 
<div class="container">
<div id="page-wrapper">
<div class="container-fluid">
<div class="panel panel-default">
<div class="panel-heading">
<h3 class="panel-title"><i class="fa fa-money fa-fw"></i> All Registered Members</h3>
&nbsp;
 
</div>
&nbsp;
<div class="panel-body">
<div class="table-responsive">Email AddressPhone NumberMore Info @foreach($members as $key =&gt; $member) {{ $member-&gt;email }}{{ $member-&gt;phone }} <a class="btn btn-large btn-info" href="{{ URL::to('more/' . $member-&gt;id) }}">View more info</a>   @endforeach
<table class="table table-striped table-bordered">
<thead>
<tr>
<td>Member Name</td>
</tr>
</thead>
<tbody>
<tr>
<td>{{ $member-&gt;name }}</td>
</tr>
</tbody>
</table>
&nbsp;
 
</div>
&nbsp;
 
</div>
</div>
&nbsp;
 
</div>
&nbsp;
 
</div>
&nbsp;
 
</div>
@endsection