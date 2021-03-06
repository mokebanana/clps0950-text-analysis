* clps0950-text-analysis
Midterm project for CLPS 0950

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

gif: 
![](https://i.imgur.com/6HNTZBK.gif)

video demo link:
https://youtu.be/guxJ0-phL7s

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

                     ************************
                     *                      *
                     *   Code Description   *
                     *                      *
                     ************************

* our main documents *

NRC.csv: all emotional words and corresponding sentiments

Text_data: Amazon review data for car tool (5 stars, highly positive)

                         - - - - - - - - -

* our main functions *

clean_up_text: processes text document in preparation for emotional
               analysis, outputs cleaned text in new cleaned_text.txt

isEmotion: determines whether a word is an emotional valence word, aka
           present in emotionsList

sumEmotion: counts all sentiments of words within a text (uses isEmotion)

                         - - - - - - - - -

* our main scripts *

Read_emotions: reads in NRC.csv as table and filters for relevant words,
               produces table with 5555 words and their sentiments

Read_data2:
- reads in Text_data (relevant column)
- cleans using clean_up_text function
- writes cleaned text to cleaned_text
- produces a table with all the unique words in the text and their
  individual occurances within the text
- most importantly, it generates the vector of the total # of sentiments
  within the text

makeGraphs: graphs bar charts and wordCloud

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

                     *************************
                     *                       *
                     *   User Instructions   *
                     *                       *
                     *************************

1. Run Read_emotions
2. Run Read_data2 (will take a minute to run but only has to be done once)
3. Run makeGraphs

To analyze other texts, substitute the Text_data file with other text
source and remember to clean using our clean_up_text function.

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

         *******************************************************
         *                                                     *
         *   Our work/meeting schedule outside of class time   *
         *                                                     *
         *******************************************************

                           3/14: 5-7 PM
                           3/15: 5-7 PM
                           3/16 3-5 PM
                           3/17 5-7 PM
                           3/18 9-10 AM
                           3/19 4-5 PM
                           3/22 3-5PM

- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

                  *******************************
                  *                             *
                  *   Our work logged per day   *
                  *                             *
                  *******************************

We followed the schedule above and coded everything together

3/14
- Found emotional valence words study
- Found Amazon review (emotional valence high) dataset

3/15
- Initialized project
- Learned and acquired text analysis toolbox
- Learned and used: readtable
- Read emotions dataset from CSV file into array format
- Select, tokenize, and clean emotions data into tokenized document

3/16
- Read Amazon review dataset from text file into array and then tokenized
- Learned and used: table2array, writeTextDocument, tokenizedDocument, 
- addPartOfSpeechDetails, removeStopWords, normalizeWords,
    erasePunctuation, removeShortWords, removeLongWords, removeWords
Implemented clean_up_text function
Wrote tokenized review data to new file using writeTextDocument (will 
create a function for this later)

3/17
Made isEmotion function with loop that searches through emotionsList to 
output a boolean when the word is a sentiment word present in emotionsList
Word counter for the text (to count amount of time each emotion appears)

3/18
Found new version of emotions dataset from same study
Edited NRC.csv to have necessarily rows
Read and cleaned NRC.csv to make new version of emotionsList with 5555 rows
(words) and 10 sentiment columns for each
Edited isEmotion to also output the index of the found word within 
emotionsList
Wrote new version of Read_data: Read_data2
Utilized bagOfWords tool to get all words in the text document and their 
counts

3/21
Wrote sumEmotion function which took in bagTbl and emotionsTbl to count how
many occurrences of each sentiment occurs in the overall text document
This function uses isEmotion
Returns a vector with 10 sentiment columns (emotionsVec)

3/22
Made figures for bar charts and wordCloud
Edited graphs - made axes, titles, colors, added values
Rounded numbers for more concise values
