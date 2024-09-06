function cond_prob = compute_cond_prob(x, l, m, lambda)


    cond_prob = zeros(1, length(x));
    for i = 1:length(x)
        
        if mod(x(i)-l, 2) == 0 
            cond_prob(i) = (lambda^(l-abs(x(i))) / ((2^(m + 1) * (m + 1)^l) * factorial(l - abs(x(i))))) * compute_S(l, abs(x(i)), m);
        else
            cond_prob(i) = 0;
        end
    end
end