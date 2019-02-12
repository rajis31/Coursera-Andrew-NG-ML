# Go over the basics 
5*6;
2^6;
1==2; % false 
1 && 0; % logical and 

a=3.1416;
disp(a);
disp(sprintf('6 decimals: %0.6f',a));

A=[1 2;3 4; 5 6]; %Matrix 
V=[1 2 3] % row vector 1x3 
V=[1;2;3] % column vector 

V=1:6; %vector 1 to 6 

w= zeros(1,3); %row revtors 1x3
w=randn(1,3); %row vector of normals 

w=-6+sqrt(10)*(randn(1,100000));
hist(w)
hist(w,50)

size(w) %tells size of matrix and iteself is 1x2 matrix 

v=[1 2 3 4]
length(v) %returns length of list dimension 


# Load data in 
pwd %shows current directory 
ls %list directorys

# Load data in 
load 'test.txt'
test %name of dataset is the filename 

# whos will list vaiables and sizes 
# clear test; will remove that variable 

v=test(1:5) % 5x 1 subset of test 
save 'output.txt' v; %saves subeset into text file 

# Indexing 

A=[1 2; 3 4; 5 6]
A(3,2) %element in 3rd row column 2 
A(2,:) %every element in that row/column 
A([1,3],:) %get everthing from 1st and 3rd rows 

A=[A,[100; 101; 102]] %append another column vector to right 

A=[1 2; 3 4; 5 6];
B= [11 12; 13 14; 15 16];
C=[A, B]  # Combine matrices horizontal

C=[A;B] % stack the matrices vertical

# GO over computations 
A.*B %Multiply matrices and use dot
A*2 

v=[1;2;3]
1./v %element wise division 

exp(v) %exponential 
abs([-1;-2;-3])
v+ ones(length(v),1) #add vector of ones or v+1

A' % ' is for transpose 

val=max(v)
[val, ind]=max(v) %returns index and vmax val


max(A) %does column wise max 
v<-5 %elementwise comparison 

A= magic(3) %makes random matrices 
[r,c] = find(A>=7)  %return row and column satisfy the condition 

sum(A) #adds column wise 
prod(A) 

max(A,[],1) %max per column 
max(A,[],2) %max per row 

sum(A,1) %sums the columns 
sum(A,2) %sums the rows

pinv(A) %psuedo inverse 


# Plotting data 
t=[0:0.01:0.98]
t
y1=sin(2*pi*4*t)
plot(t,y1)
y2=cos(2*pi*4*t)
plot(t,y1) 
hold on %this allows to append plots ontop of each other
plot(t,y2)
xlabel('time')
ylabel('value')
legend('sin','cos')
title('My Plot')

%print -dpng 'myplot.png' %output the plot 
close %close the plots 

% This will output more then 1 plot by using figure() command
figure(1) 
plot(t,y1) 
figure(2) 
plot(t,y2)  

% Use the subplot command
subplot(1,2,1) 
plot(t,y1)
subplot(1,2,2)
plot(t,y2)
axis([0.5 1 -1 1])


% For loop
v=zeros(10,1);

for i=1:10,
  v(i)=2^i;
end;

v

% while with if statement and just be sure to place ; around loops 
i=1
while i<=5,
  v(i)=100;
  i=i+1;
  if i==4,
    v(i)=65;
  elseif i==2,
    v(i)=500;
  else
    disp('The value is not one of two.');
   end;
end;

v
























 






 
 
 
 






