<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class TmdbController extends Controller
{
    public function search(Request $request)
    {
        $request->validate([
            'query' => 'required|string|min:2',
        ]);

        $apiKey = env('TMDB_API_KEY');

        if (!$apiKey) {
            return response()->json([
                'message' => 'TMDB_API_KEY não configurada no .env',
            ], 500);
        }

        $response = Http::get('https://api.themoviedb.org/3/search/movie', [
            'api_key' => $apiKey,
            'language' => 'pt-BR',
            'query' => $request->query('query'),
            'include_adult' => false,
        ]);

        if (!$response->successful()) {
            return response()->json([
                'message' => 'Erro ao consultar TMDB',
                'status' => $response->status(),
                'body' => $response->json(),
            ], $response->status());
        }

        return response()->json($response->json());
    }
}
