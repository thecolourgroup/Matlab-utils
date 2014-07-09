function res = clamp(data, rng)

% res = clamp(data, rng)
%
% Clamp data to range.
%
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

if (numel(rng) ~= 2 || rng(1) >= rng(2))
	error('RNG must have two elements, and RNG(1) must be < RNG(2).');
end

res = min(max(data,rng(1)),rng(2));

end
