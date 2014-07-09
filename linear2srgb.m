function srgb = linear2srgb(lin)

% SRGB = linear2srgb(LIN)
%
% Apply gamma correction to a linear image LIN.
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

ind = lin < 0.0031308;
% lin(~ind) = 1.055.*(lin(~ind).^(1/2.4)) - 0.055;
srgb = exp(log(1.055)+log(max(lin,1e-3))/2.4) - 0.055;
srgb(ind) = lin(ind)*12.92;
