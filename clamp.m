function res = clamp(data, rng)

% res = clamp(data, rng)
%
% Clamp data to range.
%

if (numel(rng) ~= 2 || rng(1) >= rng(2))
	error('RNG must have two elements, and RNG(1) must be < RNG(2).');
end

res = min(max(data,rng(1)),rng(2));

end
