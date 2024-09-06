function res = compute_S(l, x, m)
    res = 0;

    for n = 0:m+1
        res = res + (nchoosek(m+1, n) * (m + 1 - (n))^(l - x) * (n)^(l));
    end
end

