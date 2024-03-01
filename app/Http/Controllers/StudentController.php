<?php

namespace App\Http\Controllers;

use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Redirect;

class StudentController extends Controller
{
    public function login(): RedirectResponse
    {
            

        return Redirect::to('/home');
    }
}
