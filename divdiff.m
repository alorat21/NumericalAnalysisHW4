function TDD = divdiff(X, Y)

    if nargin ~= 2
        error('divdiff: invalid input parameters'); 
    end
    [ p, m ] = size(X); % m points, polynomial order <= m-1
    if p ~= 1 || p ~=size(Y, 1) || m ~= size(Y, 2)
        error('divdiff: input vectors must have the same dimension'); 
    end
    TDD = zeros(m, m);
    TDD(:, 1) = Y';
    for j = 2 : m
        for i = 1 : (m - j + 1)
            TDD(i,j) = (TDD(i + 1, j - 1) - TDD(i, j - 1)) / (X(i + j - 1) - X(i));
        end
    end
end