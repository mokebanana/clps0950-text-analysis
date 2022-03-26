function [countEmotion] = sumEmotion(bagTbl, emotionsTbl)
% sumEmotion: last updated Tani and Angela 03.21.22
%       takes in bagTbl (table with text's unique words and their counts)
%       and emotionsTbl (table with emotional words and their sentiments)
% accepts
%       bagTbl: (tbl)
%       emotionsTbl: (tbl)
% returns
%       countEmotion: (array of numbers)

    countEmotion = zeros(1,10);
    table_size = size(bagTbl);
    rows = table_size(1);
    emotionsList = emotionsTbl.Word;
    emotionsList = emotionsList';
    for i = 1:rows
        count = bagTbl(i,2);
        word = bagTbl(i,1);
        wordCell = table2array(word);
        countCell = table2array(count);
        [found,ind] = isEmotion(wordCell, emotionsList);
        if found == 1
           emotionRow = emotionsTbl(ind,:);
           vec = table2array(emotionRow(:,2:11));
           vecMultiplied = vec*countCell;
           countEmotion = countEmotion + vecMultiplied;
        end
    end
end