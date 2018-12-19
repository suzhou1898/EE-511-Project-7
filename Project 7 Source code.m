%For the problem b)
a=linspace(0,5,101);
Fx=zeros(1,101);
for i=1:1000
    b(i)=rand();
    c(i)=-log(b(i));
    for j=1:101
     if(c(i)<=a(j))
     Fx(j)=Fx(j)+1;
     end
    end
end
Fx=Fx/1000;
plot(a,Fx,'b');
hold on;
y=1-exp(-a);
plot(a,y,'r');
grid on
title('The empirical distribution')
ylabel('The value of probability')
xlabel('The value taken on by x')

%For the problem c), d) and e)
for i=1:1000
    for j=1:3
     b(j)=rand;
     c(j)=-log(b(j));
    end
    a(i)=c(1)+c(2)+c(3);
end
mean_er=mean(a);
var_er=var(a);
 
for i=1:1000
    for j=1:3
        d(j)=rand;
    end
e(i)=d(1)*d(2)*d(3);
f(i)=-log(e(i));
end
mean_com=mean(f);
var_com=var(f);
 
j=1;
i=1;
while (j<=1000)
    g(i)=unifrnd(0,10);
    h(i)=rand;
    p(i)=(g(i))^2*exp(-g(i))*5/2;
   if (h(i)<=p(i))
       k(j)=g(i);
       j=j+1;
   end
   i=i+1;
end
mean_re=mean(k);
var_re=var(k);

%For the problem f)
tic;
for i=1:3000000
    for j=1:3
     b(j)=rand;
     c(j)=-log(b(j));
    end
    a(i)=c(1)+c(2)+c(3);
end
toc;
mean_er=mean(a);
var_er=var(a);
 
tic;
for i=1:3000000
    for j=1:3
        d(j)=rand;
    end
e(i)=d(1)*d(2)*d(3);
f(i)=-log(e(i));
end
toc;
mean_com=mean(f);
var_com=var(f);
 
tic;
j=1;
i=1;
while (j<=3000000)
    g(i)=unifrnd(0,10);
    h(i)=rand;
    p(i)=(g(i))^2*exp(-g(i))/(4*exp(-2));
   if (h(i)<=p(i))
       k(j)=g(i);
       j=j+1;
   end
   i=i+1;
end
toc;
mean_re=mean(k);
var_re=var(k);
