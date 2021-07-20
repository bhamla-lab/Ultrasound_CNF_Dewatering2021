clear;
clc;
%Load all width vectors from folder: note that the number of vectors
%depends on number of images in folder which can vary, make sure to remove
%or add lined below to load desired variables if needed, this is currently
%set up for analysing a folder containing 15 images
load WidthVectorPH11.mat WidthVectorPH11
load WidthVectorPH12.mat WidthVectorPH12
load WidthVectorPH13.mat WidthVectorPH13
load WidthVectorPH14.mat WidthVectorPH14
load WidthVectorPH15.mat WidthVectorPH15
load WidthVectorPH16.mat WidthVectorPH16
load WidthVectorPH17.mat WidthVectorPH17
load WidthVectorPH18.mat WidthVectorPH18
load WidthVectorPH19.mat WidthVectorPH19
load WidthVectorPH110.mat WidthVectorPH110
load WidthVectorPH111.mat WidthVectorPH111
load WidthVectorPH112.mat WidthVectorPH112
load WidthVectorPH113.mat WidthVectorPH113
load WidthVectorPH114.mat WidthVectorPH114
load WidthVectorPH115.mat WidthVectorPH115

%Concatenate all width vectors into a single vector:
AllWidths = [WidthVectorPH11, WidthVectorPH12, WidthVectorPH13, WidthVectorPH14, WidthVectorPH15, WidthVectorPH16, WidthVectorPH17, WidthVectorPH18, WidthVectorPH19, WidthVectorPH110, WidthVectorPH111, WidthVectorPH112, WidthVectorPH113, WidthVectorPH114, WidthVectorPH115];
%Scale to um
AllWidthsScaledST10 = AllWidths*0.1; %HARDCODED NAME must rename per each folder (i.e. org for undried, ST10 for single transducer 10ml/hr, ST30 for single transducer 30 mL/hr etc) 
save('AllWidthsScaledST10', 'AllWidthsScaledST10'); %HARDCODED NAME must rename per each folder (i.e. org for undried, ST10 for single transducer 10ml/hr, ST30 for single transducer 30 mL/hr etc) 

%Load all width vectors from folder:
load LengthVectorPH11.mat LengthVectorPH11
load LengthVectorPH12.mat LengthVectorPH12
load LengthVectorPH13.mat LengthVectorPH13
load LengthVectorPH14.mat LengthVectorPH14
load LengthVectorPH15.mat LengthVectorPH15
load LengthVectorPH16.mat LengthVectorPH16
load LengthVectorPH17.mat LengthVectorPH17
load LengthVectorPH18.mat LengthVectorPH18
load LengthVectorPH19.mat LengthVectorPH19
load LengthVectorPH110.mat LengthVectorPH110
load LengthVectorPH111.mat LengthVectorPH111
load LengthVectorPH112.mat LengthVectorPH112
load LengthVectorPH113.mat LengthVectorPH113
load LengthVectorPH114.mat LengthVectorPH114
load LengthVectorPH115.mat LengthVectorPH115


%Concatenate all width vectors into a single vector:
AllLengths = [LengthVectorPH11; LengthVectorPH12; LengthVectorPH13; LengthVectorPH14; LengthVectorPH15; LengthVectorPH16; LengthVectorPH17; LengthVectorPH18; LengthVectorPH19; LengthVectorPH110; LengthVectorPH111; LengthVectorPH112; LengthVectorPH113; LengthVectorPH114; LengthVectorPH115];
%Flip AllLengths column vector into a row vector:
AllLengthsFlipped = AllLengths.';
%Scale to um
AllLengthsFlippedScaledST10 = AllLengths.'*0.1; %HARDCODED NAME must rename per each folder (i.e. org for undried, ST10 for single transducer 10ml/hr, ST30 for single transducer 30 mL/hr etc) 
save('AllLengthsFlippedScaledST10', 'AllLengthsFlippedScaledST10');%HARDCODED NAME must rename per each folder (i.e. org for undried, ST10 for single transducer 10ml/hr, ST30 for single transducer 30 mL/hr etc) 