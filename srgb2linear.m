function lin = srgb2linear(srgb)

% LIN = srgb2linear(RGB)
%
% Remove gamma correction from the sRGB image RGB.
%
% Copyright (C) 2014 Roberto Montagna <rm@robertomontagna.it>
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
%

ind = srgb < 0.04045;
% srgb(~ind) = ( (srgb(~ind)+0.055)./1.055 ).^2.4;
lin = exp(log((max(srgb,1e-3)+0.055)./1.055)*2.4);
lin(ind) = srgb(ind) / 12.92;

