
num=1
perf=zeros(num,1001);
grad=zeros(num,1001);
f_score=zeros(1,num);
recall=zeros(1,num);
precision=zeros(1,num);

%error=zeros(num,1323000);
for i=1:num
   load(strcat('section6_3_R3 (',num2str(i),').mat'))
   perf(i,:)=tr.perf;
   grad(i,:)=tr.gradient;
   [f_score(i)]=predictionValidation(section6_3_R3);
end
meanGrad=mean(grad(:,1:1000));
stdGrad=std(grad(:,1:1000));
meanPerf=mean(perf(:,1:1000));
stdPerf=std(perf(:,1:1000));

for i=1:num
    
    semilogy(1:1000,grad(i,1:1000));
    hold on
end
%}
histo=cell(1,num);
subplot(1,2,1);
for i=1:2
    histogram(error(i,:),[-1:0.025:1]);
    set(gca,'Yscale','log')
    xlabel('Error')
    ylabel('# predictions')
    legend('inputMap','bothMap')
    hold on
end
subplot(1,2,2);
for i=3:4
    histogram(error(i,:),[-1:0.025:1]);
    set(gca,'Yscale','log')
    xlabel('Error')
    ylabel('# predictions')
    legend('noMap','outputMap')
    hold on
end