function X = normrej(N)
c = 1/(sqrt(2*pi));
X = zeros(N,1); % Preallocate memory
for i = 1:N
    accept = false;
    while accept == false
        u = rand();
        v = -4 + (4+4).*rand();
        if c*u <= (exp(-v^2/2))/(sqrt(2*pi))
           X(i) = v;
           accept = true;
        end
    end
end

% N=100;
% X = zeros(N,1);
% for i = 1:N
% X_tilde = 3.*rand;
% Y = rand;
% while Y > exp(-X_tilde)
% X_tilde = rand;
% end
% X(i) = X_tilde;
% end
% 
% figure(4)
% histogram(X,'BinMethod','fd');