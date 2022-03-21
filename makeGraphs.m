posNeg = emotionsVec(1:2);
sentiments = emotionsVec(3:10);

figure(1)
subplot(1,2,1)
barPosNeg = bar(posNeg);
title('Total Pos. and Neg. Valency of Words');
ylabel('# of Words')
subplot(1,2,2)
barSentiments = bar(sentiments);
title('Total Valency of Dif. Emotions');
ylabel('# of Words');

figure(2)
uniqueWords = ["Positive", "Negative", "Anger", "Anticipation", "Digust", "Fear", "Joy", "Sadness", "Surprise", "Trust"];
bag = bagOfWords(uniqueWords, emotionsVec);
wordcloud(bag);
