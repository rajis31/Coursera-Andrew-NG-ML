function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
sigma =[0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
errors=zeros(size(C,2),size(sigma,2));


% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

for i=1:size(C,2)
  for j=1:size(sigma,2)
    model= svmTrain(X, y, C(i), @(X, y) gaussianKernel(X, y, sigma(j)));
    pred=svmPredict(model,Xval);
    errors(i,j)=mean(double(pred ~= yval));
  end
end

minVal=min(min(errors));
[minC,minS]=find(errors==minVal);
C=C(minC);
sigma=sigma(minS);




% =========================================================================

end
