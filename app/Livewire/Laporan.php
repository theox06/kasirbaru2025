<?php

namespace App\Livewire;

use App\Models\Transaksi;
use Livewire\Component;

class Laporan extends Component
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
        $semuaTransaksi = Transaksi::where('status', 'selesai')->get();
        return view('livewire.laporan')->with([
            'semuaTransaksi'    =>  $semuaTransaksi
        ]);
    }
}
