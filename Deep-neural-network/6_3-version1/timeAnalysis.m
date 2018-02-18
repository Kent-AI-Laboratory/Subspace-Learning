trainFeature=resM;
final=zeros(7,50);
sampleSize=50;
%for j=1:4
tDNN=zeros(1,sampleSize);
%net=n{j};
for i=1:sampleSize
    tic;
    rawNetData=section6_3_R3_05(trainFeature(i,:)');
    rND=ptFilter(rawNetData,0.5);
    a{i}=postProcessing(trainFeature(i,:),[zeros(1,1323*3),rND',zeros(1,1323*2)],'visualization',false);
    %if i==1
        tDNN(i)=toc;
    %else
    %tDNN(i)=tDNN(i-1)+toc;
    %end
end
semilogy(tDNN)
final(i,:)=tDNN;
hold on
%end


tClassical=zeros(1,sampleSize);
for i=1:sampleSize
    tic;
    b{i}=discretizedWorkspace(trainFeature(i,:));
    %if i==1
    tClassical(i)=toc;
    %else
    %tClassical(i)=tClassical(i-1)+toc;
    %end
end
hold on
semilogy(1:sampleSize,tClassical,'lineWidth',2)