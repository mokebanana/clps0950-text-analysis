
% This file reads in the Amazon reviews we use to test emotions_analysis

filename = "Text_data";
data = readtable(filename);
textData = data(:,6);
% Final form needs to be array to input to clean_up_text function
textData = table2array(textData);

% Tokenize and clean up the text
cleaned_text = clean_up_text(textData);
cleaned_text = removeWords(cleaned_text, 'reviewtext');

% Create new text file to store cleaned text data
% TODO: make this into a function with input new_file_name
new_file_name = "cleaned_text.txt";
writeTextDocument(cleaned_text,new_file_name);
data2 = readtable(new_file_name);
cleanData = table2array(data2);
line = 1;
last = length(emotionsList);
while line < last 
    word = emotionsList(1,line);
    Word_counter = count(cleanData, char(word));
    Sum_wc = sum(Word_counter);
    line = line + 1;
end