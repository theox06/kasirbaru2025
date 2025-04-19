<?php

namespace App\Livewire;

use Livewire\Component;

class Beranda extends Component
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
        return view('livewire.beranda');
    }
}
