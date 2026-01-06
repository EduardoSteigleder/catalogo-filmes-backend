<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Favorite;
use Illuminate\Http\Request;

class FavoriteController extends Controller
{
    public function index(Request $request)
    {
        $query = Favorite::query();

        if ($request->filled('genre_ids')) {
            $query->where('genre_ids', 'like', '%' . $request->genre_ids . '%');
        }

        return response()->json(
            $query->orderByDesc('id')->get()
        );
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'tmdb_id' => 'required|integer|unique:favorites,tmdb_id',
            'title' => 'required|string',
            'poster_path' => 'nullable|string',
            'genre_ids' => 'nullable|string',
            'release_date' => 'nullable|date',
        ]);

        $fav = Favorite::create($data);

        return response()->json($fav, 201);
    }

    public function destroy($id)
    {
        $deleted = Favorite::where('id', $id)->delete();

        if ($deleted === 0) {
            return response()->json(['message' => 'Registro não encontrado'], 404);
        }

        return response()->json(['message' => 'Removido com sucesso'], 200);
    }
}
