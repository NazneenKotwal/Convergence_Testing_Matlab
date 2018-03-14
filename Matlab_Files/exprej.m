function X = exprej(N)
c = 1;
X = zeros(N,1); % Preallocate memory
for i = 1:N
    accept = false;
    while accept == false
        u = rand();
        v = 6.*rand();
        if c*u <= exp(-v)
           X(i) = v;
           accept = true;
        end
    end
end
