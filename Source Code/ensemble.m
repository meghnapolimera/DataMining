clear;
clear all;

%name = csvread('TestLabel.csv',1,0); 
data = csvread('TrainingData.csv',1,1);  % full training and testing 
label = csvread('Label.csv',1,0);  

N=350;

features_gini = csvread('features_gini.csv',0,0,[0 0 N-1 0]);
    for i = 1:N
        selected_features(1:1800,i) = data(1:1800,features_gini(i));
    end
    

training_data=selected_features(1:1500,:);

testing_data = selected_features(1501:1800,:);

%testing_data = csvread('TestingDataFinal.csv',1,1);
training_label=label(1:1500);

ens = fitensemble(training_data,training_label, 'AdaBoostM1',1200,'Tree');



cvens=crossval(ens);
kfoldLoss(cvens)

Testing_label = predict(ens,testing_data);


%index=Testing_label==testName_label;
%sum(index)/size(Testing_label,1)

