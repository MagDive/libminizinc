% RUNS ON mzn20_fd
% RUNS ON mzn-fzn_fd
% RUNS ON mzn20_fd_linear
% RUNS ON mzn20_mip

% Regression test for bug #256: this model caused solns2out
% to abort with the following message:
%
% solns2out:
%  error: 
%  <standard input>:1 
%  In assignment for 'x'. 
%  In coercion. 
%  In 'array1d' expression. 
%  This is not a valid MiniZinc array type.

array[1..1] of var set of 1..1: x = [{}];                                                                                                                                 
solve satisfy;                                                                                                                                                            
output [show(x), "\n"];
