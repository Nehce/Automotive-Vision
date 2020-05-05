function [idx,D] = nearest_neighbor (Q,R)
% function [idx,D] = nearest_neighbor (Q,R)
%
% This function interprets Q and R as two sets of d-dimensional row vectors
% and calculates for each point in Q its closest neighbor in R (with
% respect the the Euclidean distance). It returns in idx for each vector in
% Q the index of the closest neighbor and in D the minimal distance.

% -----(task 3.3) ------

[N,M] = size(Q);
L = size(R, 1);
idx = zeros(N, 1);
D = zeros(N, 1);
for k = 1:N
    d = zeros(L,1);
    for t = 1:M
        d = d+(R(:,t)-Q(k,t)).^2;
    end
    [D(k), idx(k)] = min(d); % 此处的idx(k)如何被赋值？min(d)为一个数
                             % min函数的用法：可以有2个返回值  [min, index]
end
D = sqrt(D);    

% ----- -------------------------- ------
end
