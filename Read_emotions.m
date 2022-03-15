filename = "Basic_emotions.csv";
data = readtable(filename);
textData = data.Word;
cleanedDocuments = tokenizedDocument(textData);
cleanedDocuments = removeLongWords(cleanedDocuments,6);
cleanedDocuments(1:10)