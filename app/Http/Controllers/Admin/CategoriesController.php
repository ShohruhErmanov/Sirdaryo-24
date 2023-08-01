<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = Category::paginate(5);
        return view('admin.categories.index', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
       return view('admin.categories.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

         $this->validate($request, [
            'name_uz' => 'required',
            'name_uz' => 'required',
         ]);

        $requestData = $request->all();
        $requestData['slug']=\Str::slug($requestData['name_uz']);

        Category::create($requestData);
        return redirect()->route('admin.categories.index')->with('seccess', 'Category created saccessfuly');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
       $category = Category::findOrFail($id);
       return view('admin.categories.show', compact('category'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $category = Category::findOrFail($id);
        return view('admin.categories.edit', compact('category'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {

        $this->validate($request, [
            'name_uz' => 'required',
            'name_uz' => 'required',
         ]);

         $requestData = $request->all();
         $requestData['slug']=\Str::slug($requestData['name_uz']);

        $category = Category::findOrFail($id);
        $category->update($requestData);
        return redirect()->route('admin.categories.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $category = Category::findOrFail($id);
        $category->delete();
        return redirect()->route('admin.categories.index');
    }
}
