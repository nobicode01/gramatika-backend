<?php

namespace App\Http\Controllers\API;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProductController extends Controller
{
    public function all(Request $request){
        $id = $request->input('id');
        $limit = $request->input('limit', 6);
        $name = $request->input('name');
        $slug = $request->input('slug');
        $type = $request->input('type');
        $price_from = $request->input('price_from');
        $price_to = $request->input('price_to');

        if($id){
            $product = Product::with('galleries')->find($id);

            if($product)
                return ResponseFormatter::success($product, 'Data product berhasil diambil');
            else
                return ResponseFormatter::error(null, 'Data product tidak ada', 404);
        }
        
        if($slug){
            $product = Product::with('galleries')
            ->where('slug', $slug)
            ->first();

            if($product)
                return ResponseFormatter::success($product, 'Data product berhasil diambil');
            else
                return ResponseFormatter::error(null, 'Data product tidak ada', 404);
        }

        $product = Product::with('galleries');

        if ($name)
            $product->where('name', 'like', '%' . $name . '%');

        if ($type)
            $product->where('name', 'like', '%' . $type . '%');

        if ($price_from)
            $product->where('name','>=', $price_from);

        if ($price_to)
            $product->where('name','<=', $price_to);

        return ResponseFormatter::success(
            $product->paginate($limit),
            'Data list produk berhasl diambil'
        );
    }
}
