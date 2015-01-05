%%
R=1;
x=R*linspace(0,1,1000);

sigma=.2;
A=1;
ssh=A*exp(-.5* x.^2/sigma^2);
dx=diff(x,1);
v=diff(ssh,1)./dx;
om=diff(v,1)./dx;
%%
clf
plot(x,ssh,x(1:end-1),v)
hold on