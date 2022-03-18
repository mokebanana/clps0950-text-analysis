posNeg = emotionsVec(1:2);
sentiments = emotionsVec(3:10);

figure(1)
subplot(1,2,1)
barPosNeg = bar(posNeg);
subplot(1,2,2)
barSentiments = bar(sentiments);

figure(2)
uniqueWords = ["Positive", "Negative", "Anger", "Anticipation", "Digust", "Fear", "Joy", "Sadness", "Surprise", "Trust"];
bag = bagOfWords(uniqueWords, emotionsVec);
wordcloud(bag);