
% This file reads in the Amazon reviews we use to test emotions_analysis

filename = "Text_data";
data = readtable(filename);
textData = data(:,6);
% Final form needs to be array to input to clean_up_text function
textData = table2array(textData);