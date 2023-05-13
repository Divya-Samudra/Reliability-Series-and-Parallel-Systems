clc;
clear;
elements=500;
for j=1:elements
element_reliability(j)=0.99;
element_reliability1(j)=0.98;
element_reliability2(j)=0.97;
element_reliability3(j)=0.95;
end
system_reliability=1;
system_reliability1=1;
system_reliability2=1;
system_reliability3=1;
for i=1:elements
    system_reliability =system_reliability*element_reliability(i);
    reliability_plot(i)=system_reliability;
    system_reliability1 =system_reliability1*element_reliability1(i);
    reliability_plot1(i)=system_reliability1;
    system_reliability2 =system_reliability2*element_reliability2(i);
    reliability_plot2(i)=system_reliability2;
    system_reliability3 =system_reliability3*element_reliability3(i);
    reliability_plot3(i)=system_reliability3;
end
unreliability=1-system_reliability;
figure(1)
plot(1:elements,reliability_plot,'r','LineWidth',2);
hold on
plot(1:elements,reliability_plot1,'b','LineWidth',2);
hold on
plot(1:elements,reliability_plot2,'k','LineWidth',2);
hold on
plot(1:elements,reliability_plot3,'m','LineWidth',2);
hold on
myplot('Reliability of Series Components','No. of Components','Reliability',{'R=0.99','R=0.98','R=0.97', 'R=0.95'})




