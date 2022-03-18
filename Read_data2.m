% This file reads in the Amazon reviews we use to test emotions_analysis

filename = "Text_data";
data = readtable(filename);
textData = data(:,6);
% Final form needs to be array to input to clean_up_text function
textData = table2array(textData);

% Tokenize and clean up the text
cleaned_text = clean_up_text(textData);
cleaned_text = removeWords(cleaned_text, 'reviewtext');
% By this point, we have tokenized documents of all the reviews, cleaned

% Bag of Words
bag = bagOfWords(cleaned_text);
bagTbl = topkwords(bag,bag.NumWords); % table of all words + counts
% Filter for: words that are in emotionsList
% eTbl = bagTbl(isEmotion(bagTbl{:,"Word"},emotionsList),:)

for i = bagTbl
    disp(i)
end