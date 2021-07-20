clear;
clc;
%Load all compiled width vectors from AllCompiledVectors folder:
load AllWidthsScaledOrg.mat AllWidthsScaledOrg
load AllWidthsScaledST10.mat AllWidthsScaledST10
load AllWidthsScaledST15.mat AllWidthsScaledST15
load AllWidthsScaledST30.mat AllWidthsScaledST30
load AllWidthsScaledST60.mat AllWidthsScaledST60

%Load all compiled Length vectors from AllCompiledVectors folder:
load AllLengthsFlippedScaledOrg.mat AllLengthsFlippedScaledOrg
load AllLengthsFlippedScaledST10.mat AllLengthsFlippedScaledST10
load AllLengthsFlippedScaledST15.mat AllLengthsFlippedScaledST15
load AllLengthsFlippedScaledST30.mat AllLengthsFlippedScaledST30
load AllLengthsFlippedScaledST60.mat AllLengthsFlippedScaledST60

AllWidthsScaledOrgFlipped = AllWidthsScaledOrg.';
AllWidthsScaledST10Flipped = AllWidthsScaledST10.';
AllWidthsScaledST15Flipped = AllWidthsScaledST15.';
AllWidthsScaledST30Flipped = AllWidthsScaledST30.';
AllWidthsScaledST60Flipped = AllWidthsScaledST60.';

AllLengthsScaledOrg = AllLengthsFlippedScaledOrg.';
AllLengthsScaledST10 = AllLengthsFlippedScaledST10.';
AllLengthsScaledST15 = AllLengthsFlippedScaledST15.';
AllLengthsScaledST30 = AllLengthsFlippedScaledST30.';
AllLengthsScaledST60 = AllLengthsFlippedScaledST60.';

%Use commented code below if wish to find standard deviation and mean of
%data:

%WidthDistNormOrg = fitdist(AllWidthsScaledOrgFlipped,'Normal');
%muOrgW=WidthDistNormOrg.mu;
%sigmaOrgW=WidthDistNormOrg.sigma;

%WidthDistNormST10 = fitdist(AllWidthsScaledST10Flipped,'Normal');
%muST10W=WidthDistNormST10.mu;
%sigmaST10W=WidthDistNormST10.sigma;

%WidthDistNormST15 = fitdist(AllWidthsScaledST15Flipped,'Normal');
%muST15W=WidthDistNormST15.mu;
%sigmaST15W=WidthDistNormST15.sigma;

%WidthDistNormST30 = fitdist(AllWidthsScaledST30Flipped,'Normal');
%muST30W=WidthDistNormST30.mu;
%sigmaST30W=WidthDistNormST30.sigma;

%WidthDistNormST60 = fitdist(AllWidthsScaledST60Flipped,'Normal');
%muST60W=WidthDistNormST60.mu;
%sigmaST60W=WidthDistNormST60.sigma;

%LengthDistNormOrg = fitdist(AllLengthsScaledOrg,'Normal');
%muOrgL=LengthDistNormOrg.mu;
%sigmaOrgL=LengthDistNormOrg.sigma;

%LengthDistNormST10 = fitdist(AllLengthsScaledST10,'Normal');
%muST10L=LengthDistNormST10.mu;
%sigmaST10L=LengthDistNormST10.sigma;

%LengthDistNormST15 = fitdist(AllLengthsScaledST15,'Normal');
%muST15L=LengthDistNormST15.mu;
%sigmaST15L=LengthDistNormST15.sigma;

%LengthDistNormST30 = fitdist(AllLengthsScaledST30,'Normal');
%muST30L=LengthDistNormST30.mu;
%sigmaST30L=LengthDistNormST30.sigma;

%LengthDistNormST60 = fitdist(AllLengthsScaledST60,'Normal');
%muST60L=LengthDistNormST60.mu;
%sigmaST60L=LengthDistNormST60.sigma;


%save('WidthDistNormOrg', 'WidthDistNormOrg');
%save('WidthDistNormST10', 'WidthDistNormST10');
%save('LengthDistNormOrg', 'LengthDistNormOrg');
%save('LengthDistNormST10', 'LengthDistNormST10');

%Plotting both arrangements of width histograms to see which looks best:
figure(1)

subplot(2,3,[1,2,3]);
h2 = histogram(AllWidthsScaledST10); %blue
hold on
h1 = histogram(AllWidthsScaledST15); %orange
h1.BinWidth = 0.25;
h2.BinWidth = 0.25;
ylim([0 110]);
%title('single transducer: 10 mL/hr vs control fiber widths')
legend('ST10 <W>=1')
%legend(['ST10 width SD=' num2str(sigmaST10W)])
%legend(['control <W>=' num2str(muOrgW)])
%legend(['control width SD=' num2str(sigmaOrgW)])
legend('10 mL/hr', 'control')
%txt = {'ST10 <W>=' num2str(muST10W) 'um'};
%text(11.7,55,txt)
xlabel('width (\mum)')
ylabel('N_{f}')
hold off

subplot(2,3,4);
h3=histogram(AllWidthsScaledST15);
h3.BinWidth = 0.25;
ylim([0 110]);
xlim([0 8]);
%title('15 mL/hr')
xlabel('width (\mum)')
ylabel('N_{f}')

subplot(2,3,5);
h4=histogram(AllWidthsScaledST30);
h4.BinWidth = 0.25;
ylim([0 110]);
xlim([0 8]);
%title('30 mL/hr')
xlabel('width (\mum)')
ylabel('N_{f}')

subplot(2,3,6);
h5=histogram(AllWidthsScaledST60);
h5.BinWidth = 0.25;
ylim([0 110]);
xlim([0 8]);
%title('60 mL/hr')
xlabel('width (\mum)')
ylabel('N_{f}')

set(0,'DefaultFigureColor',[1 1 1])

% Now creating Length Histograms:
%Plotting both arrangements of width histograms to see which looks best:
figure(2)

subplot(2,3,[1,2,3]);
h7 = histogram(AllLengthsFlippedScaledST10); %blue
hold on
h6 = histogram(AllLengthsFlippedScaledST15); %orange
%h1.BinWidth = 2;
%h2.BinWidth = 2;
ylim([0 350]);
%title('single transducer: 10 mL/hr vs control fiber lengths')
legend('10 mL/hr', 'control')
xlabel('length (\mum)')
ylabel('N_{f}')
hold off

subplot(2,3,4);
h8=histogram(AllLengthsFlippedScaledST15);
%h3.BinWidth = 2;
ylim([0 350]);
xlim([0 220]);
%title('15 mL/hr')
xlabel('length (\mum)')
ylabel('N_{f}')

subplot(2,3,5);
h9=histogram(AllLengthsFlippedScaledST30);
%h4.BinWidth = 2;
ylim([0 350]);
xlim([0 220]);
%title('30 mL/hr')
xlabel('length (\mum)')
ylabel('N_{f}')

subplot(2,3,6);
h10=histogram(AllLengthsFlippedScaledST60);
%h5.BinWidth = 2;
ylim([0 350]);
xlim([0 220]);
%title('60 mL/hr')
xlabel('length (\mum)')
ylabel('N_{f}')

set(0,'DefaultFigureColor',[1 1 1])









%REST OF CODE IS SCRATCH/PLAYING WITH PROBABILITY

%supposed to help determine if good fit to norm dist by linearity through
%first and third quadrants, not sure if useful here since different sized
%vectors w different maxima due to outliers associated with ST10.

%figure(3)
%Widths = [AllWidthsScaledOrg, AllWidthsScaledST10];
%normplot(Widths);


%Testing out histfit to see if I can get some decent looking distribution
%fitted over the histogram

%figure(4)
%HF1= histfit(AllWidthsScaledOrg,25);
%hold on
%HF2 = histfit(AllWidthsScaledST10, 80);
%set(HF1(1),'FaceColor',[0 0 1],'EdgeColor',[0 0 1],'facealpha',0.7,'edgealpha',0.7);
%set(HF1(2), 'color', 'b')
%set(HF2(1),'FaceColor',[1 0 0],'EdgeColor',[1 0 0],'facealpha',0.7,'edgealpha',0.7 );
%set(HF2(2), 'color', 'r')
%%title('ST10 vs control Fiber Widths')
%legend('control', 'control fit', 'ST10', 'ST10 fit')
%xlabel('fiber width (um)')
%ylabel('N_{f}')

%Test null hypothesis that dewatering has no effect on average width, i.e
%that the average fiber width of 2.0895 is conserved after
%drying 

%[h,pvalue,ci] = ttest(AllWidthsScaledST10,2.0895, 'Alpha',1)

%Resulting h=1 indicates that the null hypothesis is rejected at a default
%significance level of 0.05. Considering that we know some minor
%agglommeration will occur this makes sense; however, we must adjust the
%significance level to accurately reflect this. 

%NOTE: NULL HYPOTHESIS IS REJECTED AT ANY SIGNIFICANCE LEVEL, CANT JUST ADJUST
%SIGNIFICANCE LEVEL, MUST ADJUST HYPOTHESIS. (maybe test the hypothesis
%that new mean width after dewatering is withing original mean width plus
%or minus one standard distribution???)

%This next code tests the null hypothesis that the pairwise difference
%between width values from the control and st10 dweatered samples is 0. 
%This seems more appropriate.

%[h,pvalue,ci] = ttest(AllWidthsScaledST10, AllWidthsScaledOrg, 'Alpha',0.05)

%however, this doesn't work as the width vectors are different sizes 
%(different nf analyzed in each case). Could I find a way to 
%make the nf match without influencing the data???




