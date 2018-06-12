<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use Illuminate\Http\Request;

Route::get('/', function () {
    return view('welcome');
});

// SELECT ALL
Route::get('/read', function(){

	$student = DB::select('call viewStudent()');
	// dd($student);
	//var_dump($student);
	dump($student);
});

// SELECT BY ID
Route::get('/read/{id}', function($id){

	$student = DB::select('call viewStudentbyid(?)', [$id]);
	// dd($student);
	//var_dump($student);
	dump($student);
});

// INSERT (1 Parameter)

Route::get('/insert1', function(){

	$name = 'ada';
	DB::select('call insertStudent(?)', [$name]);
	// dd($student);
	//var_dump($student);
	echo "inserted successfully";
	dump($name);
});

// INSERT (2 Parameter)

Route::get('/insert2', function(){

	$name = 'sayur';
	$sex = 'M';
	DB::select('call insertStudent2(?,?)', [$name,$sex]);
	// dd($student);
	//var_dump($student);
	echo "inserted successfully";
	dump($name);
});


// DELETE BY ID

Route::get('/delete/{id}', function($id){

	DB::select('call deletestudentbyid(?)', [$id]);
	// dd($student);
	//var_dump($student);
	echo "Delete successfully";
	// dump($name);
});



// UPDATE BY ID ON GET METHOD (URL)

Route::get('/update/{id}', function($id){

	DB::select('call updatestudentbyid(?,?)', ['Gandul', $id]);
	// dd($student);
	//var_dump($student);
	echo "Update successfully";
	// dump($name);
});


// GET FORM FOR METHOD POST (UPDATE)
Route::get('/getformupdate', function(){
	return view('update');
});

// UPDATE BY ID ON POST METHOD

Route::post('/update', function(Request $request){

	$id = $request->id;
	$name = $request->name;
	DB::select('call updatestudentbyid(?,?)', [$name, $id]);

	return back();
});