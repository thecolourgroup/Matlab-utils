function lin = srgb2linear(srgb)


ind = srgb < 0.04045;
% srgb(~ind) = ( (srgb(~ind)+0.055)./1.055 ).^2.4;
lin = exp(log((max(srgb,1e-3)+0.055)./1.055)*2.4);
lin(ind) = srgb(ind) / 12.92;

