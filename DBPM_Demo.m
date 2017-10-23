function DBPM_Demo()

close all;

% we set all parameters, otherwise default values are used.
opts.masking_mode = 0;
opts.preprocessing = 1;
opts.dir_mask_size = 7;
opts.prep_wsz = 49;
opts.top_exp = 0;
opts.lambda = 0.8;
opts.theta1 = 1;
opts.theta2 = 32;
opts.fc = 1/4;
opts.verbose = 0;
opts.results_name = '';

% we load the first retinal image
A=imread('001_01.pgm');
% Ar=imresize(A, 1/4);

% we load the second retinal image
B=imread('001_02.pgm');
% Br=imresize(B, 1/4);

% this is an example of how DBPM_RetinaSegmentation works
[Results] = DBPM_RetinaSegmentation(A, opts)

% this is an example of how DBPM_RetinaVerification works
[ABScore] = DBPM_RetinaVerification(A, B, opts)