function answer = Binary(Input)
% -------------------------------------------------------------------------
% Binary Number Calculator
% -------------------------------------------------------------------------
% By : Aaron Redman
% 
% This code converts numbers in Base 10 to numbers in Base 2. A single
% number in base 10 is converted to a Matrix in Base 2. This is done
% through a series of Algebraic procedures.
%
% -------------------------------------------------------------------------
% Binary(Input) = Answer
% 
% Inputs : 
%       Input = Single Base 10 number
%
% Outputs:
%       Answer = Base 2 matrix
%
% -------------------------------------------------------------------------
if Input < 0
    error('Inputed number must be greater than zero')
end
if rem(Input,1) > 0
    error('Please input a whole number')
end
if Input==1
    Matrix=zeros(1,1);
    fprintf('%d',Matrix) % <---- Make formal display here
    return
end
if Input==2
    Matrix=ones(1,1);
    fprintf('%d',Matrix) % <---- Make formal display here
    return
end
count=0;
Num=Input;
test=0;
while Num > test
    test=2^count;
    count=count+1;
end
test2=Input;       % Fixes error of calculating the matrix size of a inputed number that is 2^n
while test2 > 1
    test2=test2/2;
end
if rem(test2,1)==0              % Matrix size is assigned
    Matrix=zeros(1,count);
else
    Matrix=zeros(1,count-1);
end
% Binary number filler
Size=size(Matrix);
Size=Size(1,2);
if rem(Input,2)~=0      % Statement takes care of 1st binary digit
    Matrix(1,Size)=1;
    Input=Input-1;
end
if Input==2
    Matrix=[1 0];
    fprintf('%d',Matrix) % <---- Make formal display here
    return
end
Remainder=Input;
count=0;
for x=2:1:Size
    x;
    count=count+1;
    if Input-2^((Size-x)+1) >= 0
        Matrix(1,count)=1;
        Input=Input-2^((Size-x)+1);
    end
end
Matrix