function imout = crop(imin)

% IMOUT = crop(IMIN)
%
% Use the mouse to select the top-left and bottom-right corners for cropping
% IMIN. IMOUT is the cropped image.
%
% Less powerful that Matlab's own IMCROP but a bit quicker and less awkward
% to use.
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

disp('The image will display, and you will have to select FIRST the top-left');
disp('corner, and THEN the bottom-right corner.');
disp('Press any key when ready.');
pause;

imshow(imin);
[cc,rr] = ginput(2);

imout = imin(round(rr(1):rr(2)),round(cc(1):cc(2)),:);
close;
