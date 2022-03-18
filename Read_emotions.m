filename = "NRC.csv"; % emotion trigger words doc
data = readtable(filename); % reads in the entire table

% Filter for: emotions that are either pos or neg
mustBePos = data{:, "Positive"} == 1;
mustBeNeg = data{:, "Negative"} == 1;
tbl = data( mustBePos | mustBeNeg , :); % tbl size: 5555 x 11

% emotionsList
emotionsList = tbl.Word;
emotionsList = emotionsList';