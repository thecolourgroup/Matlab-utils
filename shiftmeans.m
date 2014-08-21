function shifted = shiftmeans(sou, tar)

% IMOUT = shiftmeans(SOURCE, TARGET)
%
% Shifts the channels of SOURCE so that their means match the means of the
% corresponding channels in TARGET.
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


[rs,cs,ds] = size(sou);
[rt,ct,dt] = size(tar);

if (ds ~= dt)
	error('The number of channels in the two images must match.');
end

sou = reshape(sou,rs*cs,ds);
tar = reshape(tar,rt*ct,dt);

shifted = bsxfun(@plus,bsxfun(@minus,sou,mean(sou,1)),mean(tar,1));
shifted = reshape(shifted,[rs cs ds]);
