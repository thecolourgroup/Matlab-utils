function srgb = linear2srgb(lin)

ind = lin < 0.0031308;
% lin(~ind) = 1.055.*(lin(~ind).^(1/2.4)) - 0.055;
srgb = exp(log(1.055)+log(max(lin,1e-3))/2.4) - 0.055;
srgb(ind) = lin(ind)*12.92;
