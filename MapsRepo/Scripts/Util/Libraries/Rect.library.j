library Rect
    public function fromCircle takes real centerX, real centerY, real radius returns rect
        return Rect(centerX - radius, centerY - radius, centerX + radius, centerY + radius)
    endfunction
endlibrary