library Math
    public function DistanceBetweenCoords takes real x0, real y0, real x1, real y1 returns real
        local real dx = x1 - x0
        local real dy = y1 - y0
        return SquareRoot(dx * dx + dy * dy)
    endfunction
endlibrary