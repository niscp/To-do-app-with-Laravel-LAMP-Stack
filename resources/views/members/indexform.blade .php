<!DOCTYPE html>
<html>
    <head>
        <title>Title</title>

        <link href="https://fonts.googleapis.com/css?family=Lato:100" rel="stylesheet" type="text/css">

        <style>
            html, body {
                height: 100%;
            }

            body {
                margin: 0;
                padding: 0;
                width: 100%;
                display: table;
                font-weight: 100;
                font-family: 'Lato';
            }

            .container {
                text-align: center;
                display: table-cell;
                vertical-align: middle;
            }

            .content {
                text-align: center;
                display: inline-block;
            }

            .title {
                font-size: 96px;
            }
        </style>
    </head>
    <body>


        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="{{ url('/home') }}">Home</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
        <li><a href="{{ url('/new') }}">Add new member</a></li>
        <li><a href="{{ url('/edit') }}">Edit member data</a></li>
       
      </ul>
      
    </div>
  </div>
</nav>
 
<div class="container">
<div id="page-wrapper">
<div class="container-fluid">
<div class="panel panel-default">
<div class="panel-heading">
<h3 class="panel-title"><i class="fa fa-money fa-fw"></i> All Registered Members</h3>
 
</div>

<div class="panel-body">
<div class="table-responsive">
    Email AddressPhone NumberMore Info 
    @foreach($members as $key => $member) 
    {{ $member->email }}{{ $member->phone }} 
    <a class="btn btn-large btn-info" href="{{ URL::to('more/' . $member->id) }}">View more info</a>   
    @endforeach
<table class="table table-striped table-bordered">
<thead>
<tr>
<td>Member Name</td>
</tr>
</thead>
<tbody>
<tr>
<td>{{ $member->name }}</td>
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


 </div>
  

    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  </body>
</html>
