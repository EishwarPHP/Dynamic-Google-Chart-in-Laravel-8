<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class PiechartController extends Controller
{
  
    public function piechart(Request $request)
    {
    	$phone_count_18 = Product::where('product_type','phone')->where('year','2018')->get()->count();
    	$phone_count_19 = Product::where('product_type','phone')->where('year','2019')->get()->count();
    	$phone_count_20 = Product::where('product_type','phone')->where('year','2020')->get()->count();   	
    	
    	$laptop_count_18 = Product::where('product_type','laptop')->where('year','2018')->get()->count();
    	$laptop_count_19 = Product::where('product_type','laptop')->where('year','2019')->get()->count();
    	$laptop_count_20 = Product::where('product_type','laptop')->where('year','2020')->get()->count();

    	$tablet_count_18 = Product::where('product_type','tablet')->where('year','2018')->get()->count();
    	$tablet_count_19 = Product::where('product_type','tablet')->where('year','2019')->get()->count();
    	$tablet_count_20 = Product::where('product_type','tablet')->where('year','2020')->get()->count();    
    	
    	return view('piechart',compact('phone_count_18','phone_count_19','phone_count_20','laptop_count_18','laptop_count_19','laptop_count_20','tablet_count_18','tablet_count_19','tablet_count_20'));
    }
}

