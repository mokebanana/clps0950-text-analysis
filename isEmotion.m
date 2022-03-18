function found = isEmotion(word, emotionsList)
% isEmotion: last updated Angela Li 03.17.22
%       takes in a word and emotionsList and returns whether the word is
%       an emotional-valence word (present in emotionsList) or not
% accepts
%       word: (char)
%       emotionsList: (cell array)
% returns
%       found: (boolean)

for e = emotionsList
    if isequal(char(e),word)
        found = true;
        return
    end
end
found = false;
end