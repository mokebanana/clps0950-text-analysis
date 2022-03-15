function cleaned_text = clean_up_text(text_data)

% need to read the CSV file first into textData's format below
%   data = readtable(text_filepath);
%   textData = data.Word;

cleaned_text = tokenizedDocument(text_data);
cleaned_text = addPartOfSpeechDetails(cleaned_text);
cleaned_text = removeStopWords(cleaned_text);
cleaned_text = normalizeWords(cleaned_text,'Style','lemma');
cleaned_text = erasePunctuation(cleaned_text);
cleaned_text = removeShortWords(cleaned_text,2);
cleaned_text = removeLongWords(cleaned_text,15);
end