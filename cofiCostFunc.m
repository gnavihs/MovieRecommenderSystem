function [J, grad] = cofiCostFunc(params, Y, R, num_users, num_movies, ...
                                  num_features, lambda)
%COFICOSTFUNC Collaborative filtering cost function
%   [J, grad] = COFICOSTFUNC(params, Y, R, num_users, num_movies, ...
%   num_features, lambda) returns the cost and gradient for the
%   collaborative filtering problem.
%

X = reshape(params(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(params(num_movies*num_features+1:end), ...
                num_users, num_features);

J = 0;
X_grad = zeros(size(X));
Theta_grad = zeros(size(Theta));

YPredicted = Theta*X';
YDiff =  (YPredicted' - Y).*R;

J = (sum(sum(YDiff.^2)) + lambda*( sum(sum(X.^2))  +  sum(sum(Theta.^2))  ))/2;


YDiffGrad = ((Theta*X')' - Y).*R;
X_grad_temp = (YDiffGrad)*Theta + lambda*X;
Theta_grad_temp = (YDiffGrad)'*X + lambda*Theta;

X_grad = X_grad_temp;
Theta_grad = Theta_grad_temp;

% =============================================================

grad = [X_grad(:); Theta_grad(:)];

end
