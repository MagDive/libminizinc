% RUNS ON mzn20_fd
% RUNS ON mzn-fzn_fd
% RUNS ON mzn20_fd_linear
% RUNS ON mzn20_mip
%% has solution y = 1 in relational and Kleene and strict 

var 0..1: y; 

constraint not(y < 1 \/ 1 div y != 1); 

solve satisfy;

output ["y = ", show(y), ";\n"];
