PosNeg = emotionsVec(1:2);
sentiments = emotionsVec(3:10);

relPosNeg = round(PosNeg/totalCount, 3);
relSentiments = round(sentiments/totalCount, 3);


figure(1)
subplot(2,2,1)
barPosNeg = bar(PosNeg);
set(gca,'xticklabel',{'Positive', 'Negative'});
title('Total Pos. and Neg. Valency of Words');
ylabel('# of Words');
text(1:length(PosNeg),PosNeg,num2str(PosNeg'),'vert','bottom','horiz','center'); 
set(barPosNeg, 'FaceColor', '#A2142F');

subplot(2,2,2)
barSentiments = bar(sentiments);
set(gca,'xticklabel',{'Anger', 'Anticipation', 'Digust', 'Fear', 'Joy', 'Sadness', 'Surprise', 'Trust'});
title('Total Valency of Dif. Emotions');
ylabel('# of Words');
text(1:length(sentiments),sentiments,num2str(sentiments'),'vert','bottom','horiz','center'); 
set(barSentiments, 'FaceColor', '#A2142F');

subplot(2,2,3)
barRelPosNeg = bar(relPosNeg);
set(gca,'xticklabel',{'Positive', 'Negative'});
title('Relative Pos. and Neg. Valency of Words');
ylabel('# of Words / Total # of Words');
text(1:length(relPosNeg),relPosNeg,num2str(relPosNeg'),'vert','bottom','horiz','center'); 
set(barRelPosNeg, 'FaceColor', '#77AC30');

subplot(2,2,4)
barRelSentiments = bar(relSentiments);
set(gca,'xticklabel',{'Anger', 'Anticipation', 'Digust', 'Fear', 'Joy', 'Sadness', 'Surprise', 'Trust'});
title('Relative Valency of Dif. Emotions');
ylabel('# of Words / Total # of Words');
text(1:length(relSentiments),relSentiments,num2str(relSentiments'),'vert','bottom','horiz','center'); 
set(barRelSentiments, 'FaceColor', '#77AC30');

figure(2)
uniqueWords = ["Positive", "Negative", "Anger", "Anticipation", "Digust", "Fear", "Joy", "Sadness", "Surprise", "Trust"];
bag = bagOfWords(uniqueWords, emotionsVec);
wordcloud(bag);
