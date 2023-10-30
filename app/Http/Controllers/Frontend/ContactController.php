<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\ClientDetail;
use App\Models\ClientFile;
use App\Models\ContactDetail;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function contactSubmit(Request $request)
    {

        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'email|max:255',
            'phone' => 'required|string|max:20',
            'service' => 'string',
            'details' => 'nullable|string',
            'filenames.*' => 'file|mimes:jpeg,png,pdf,zip,ppt,docx,doc,jpg',
        ]);


        $clientDetail = ClientDetail::create([
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'phone' => $request->input('phone'),
            'service' => $request->input('service'),
            'details' => $request->input('details'),
        ]);

        if ($request->has('filenames')) {
            foreach ($request->file('filenames') as $file) {
                $fileName = time() . rand(1, 100) . '.' . $file->extension();
                $file->move(public_path('files'), $fileName);


                $clientFile = new ClientFile([
                    'filenames' => $fileName,
                    'file_type' => $file->getClientOriginalExtension(),
                    'file_path' => 'files/' . $fileName,
                ]);

                $clientDetail->files()->save($clientFile);
            }
        }

        return $clientDetail;
    }

}
