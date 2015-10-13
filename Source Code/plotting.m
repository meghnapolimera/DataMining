CrossValidation = [0.1559,0.1324,0.1338,0.1089,0.1196,0.1174,0.1153,0.1146,0.1210,0.1089,0.1160,0.1139];
Features = [50, 100, 150, 200, 250, 300, 350,370, 400,500 , 550, 800 ];
accuracy = [0.86,0.84,0.88,0.83,0.85,0.84,0.89,0.83,0.86,0.90,0.91,0.8632];

figure (1);
plot(Features,CrossValidation);
title('Features vs Generalization Error');
xlabel('Features');
ylabel('Generalization Error');
figure(2);
plot(Features,accuracy,'b');
title('Features vs Accuracy');
xlabel('Features');
ylabel('Accuracy');


