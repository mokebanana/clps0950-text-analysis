filename = "Basic_emotions.csv";
data = readtable(filename);
emotionsData = data.Word;
cleanedDocuments = tokenizedDocument(emotionsData);
cleanedDocuments = removeLongWords(cleanedDocuments,6);
cleanedDocuments(1:10)
newDocuments = removeEmptyDocuments(cleanedDocuments); %gets rid of empty lines

