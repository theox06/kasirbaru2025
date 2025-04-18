<?php

namespace App\Livewire;

use App\Models\Produk;
use Livewire\Component;

class LihatProduk extends Component
{
    public function render()
    {
        return view('livewire.lihat-produk')->with([
            'semuaProduk'   =>  Produk::all(),
        ]);
    }
}
