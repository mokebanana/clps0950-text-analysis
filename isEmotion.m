function [found,index] = isEmotion(word, emotionsList)
% isEmotion: last updated Angela Li 03.17.22
%       takes in a word and emotionsList and returns whether the word is
%       an emotional-valence word (present in emotionsList) or not
% accepts
%       word: (char)
%       emotionsList: (cell array)
% returns
%       found: (boolean)
%       index: (integer)
index = 0;
for e = emotionsList
    index = index + 1;
    if isequal(char(e),word)
        found = true;    
        return
    end
end
found = false;
end