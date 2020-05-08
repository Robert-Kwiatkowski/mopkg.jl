module mopkg

function bisection(f, a, b;
                   tol=1e-5, maxiter=100)
    fa = f(a)
    fa*f(b) <= 0 || error("Brak rozwiazania w podanym przedziale")
    i = 0
    local temp
    while b-a > tol
        i += 1
        i != maxiter || error("Przekroczono liczbe iteracji")
        temp = (a+b)/2
        ftemp = f(temp)
        if ftemp == 0
            break
        elseif fa*ftemp > 0
            a = temp  
            fa = ftemp
        else
            b = temp
        end
    end
    return temp
end

export bisection

end # module
