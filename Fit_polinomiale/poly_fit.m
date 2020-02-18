%% Input

% vect      - vettore dei valori (gi� ridotto)              [double[]]
% t_n       - vettore dei tempi (gi� ridotto)               [double[]]
% degree    - grado fit polinomiale                         [int]

%% Output

% pol - coefficienti grado  [double[]]
% S - vettore precisione    [double[]]

%% Function

% calcolo solo del poliyfit, non � presente la ricostruzione del finale
function [pol, S] = poly_fit(vect, t_n, degree)
    
    % rows -> numero di dimensioni
    [rows, columns] = size(vect);
    
    pol = zeros(rows, degree+1);
    S = [];
    
    % polyfit per ogni dimensione
    for i=1:rows
        
        [p, Si] = polyfit(t_n,vect(i,:),degree);
        
       	pol(i,:) = p;
        S = [S; Si];
    end
    
end