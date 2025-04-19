<?php

namespace App\Livewire;

use App\Models\Produk;
use Livewire\Component;

class LihatProduk extends Component
{
    public bool $screenTooSmall = false;

    protected $listeners = ['screenTooSmall', 'screenOkay'];

    public function screenTooSmall()
    {
        $this->screenTooSmall = true;
    }

    public function screenOkay()
    {
        $this->screenTooSmall = false;
    }

    public function render()
    {
        return view('livewire.lihat-produk')->with([
            'semuaProduk'   =>  Produk::all(),
        ]);
    }
}
