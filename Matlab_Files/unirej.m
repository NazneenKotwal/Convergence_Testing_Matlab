function X = unirej(N)
c = 1;
X = zeros(N,1); % Preallocate memory
for i = 1:N
    accept = false;
    while accept == false
        u = rand();
        v = rand();
        if c*u <= 1
           X(i) = v;
           accept = true;
        end
    end
end