<?php

namespace App\Http\Controllers\Admin\s_counsel;

use App\Http\Controllers\Controller;
use App\Models\ClientDetail;
use App\Models\ClientFile;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;


class SadikCounselController extends Controller
{
    public function index(){

        $clientDetails = ClientDetail::orderBy('id', 'desc')->paginate(15);

        return view('admin.SadikCounsel.clientInfoTable', compact('clientDetails'));
    }


    public function clientDetails($id){
        $details = ClientDetail::with('files')->where('id', $id)->first();

        return view('admin.SadikCounsel.detailClientInfo', compact('details'));
    }
}
