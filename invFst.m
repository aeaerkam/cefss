function Vt = Ft(V,t,M,w0)
Vt = zeros(size(t));
for k=-M:M
    Vt = Vt + V(k+M+1)*exp(i*w0*k*t);
end
