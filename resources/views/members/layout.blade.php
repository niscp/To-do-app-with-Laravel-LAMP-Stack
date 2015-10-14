<!DOCTYPE html>
<html lang="en">
<head>
     
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>KleverKid Demo app</title>
  
</head>
<body>
 

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="{{ url('/members') }}">Home</a>
    </div>
    <div>
        <ul class="nav navbar-nav">
        <li><a href="{{ url('/new') }}">Add new member</a></li>
        <li><a href="{{ url('/edit') }}">Edit member data</a></li>
        </ul>
      <ul class="nav navbar-nav navbar-right">
 @if (Auth::guest())
 <li><a href="/auth/login">Login</a></li>
 @else
<li class="dropdown">
 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
 aria-expanded="false">{{ Auth::user()->name }}
 <span class="caret"></span>
 </a>
 <ul class="dropdown-menu" role="menu">
 <li><a href="/auth/logout">Logout</a></li>
 </ul>
 </li>
 @endif
 </ul>
    </div>
  </div>
</nav>
 

    
<div class="container">
 
@yield('content')   
 
</div>
 
    
    <!-- online links -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
 
     
 
</body>
</html>
  @if(Session::has('flash_message'))
    <div class="alert alert-success">
        {{ Session::get('flash_message') }}
    </div>
@endif
 
@if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <strong>Whoops!</strong> There were some problems with your input.<br><br>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif