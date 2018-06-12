<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Update Students</title>
	<link rel="stylesheet" href="">
</head>
<body>
	<form method="POST" action="{{url('update')}}">
		{{ csrf_field() }}
		<label for="">ID : </label>
		<input type="text" name="id">
		<br>
		<label for="">Nama : </label>
		<input type="text" name="name">
		<br>
		<input type="submit" value="Update">
	</form>
</body>
</html>