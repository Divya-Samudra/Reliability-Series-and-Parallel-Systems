clc;
clear;
elements=5;
for j=1:elements
element_unreliability(j)=0.02;
end
system_unreliability=1;
for i=1:elements
    system_unreliability =system_unreliability*element_unreliability(i);
    reliability_plot(i)=1-system_unreliability;
end
reliability=1-system_unreliability;
figure(1)
plot(1:elements,reliability_plot,'-r*','LineWidth',2);
hold on
txt=sprintf('R(1)=%.2f,R(2)=%.2f,R(3)=%.2f,R(4)=%.2f,R(5)=%.2f',reliability_plot(1),reliability_plot(2),reliability_plot(3),reliability_plot(4),reliability_plot(5))
axis([1 5 0.975 1.02])
myplot('Reliability of Parallel Components','Reliability','No. of Components',{txt})




