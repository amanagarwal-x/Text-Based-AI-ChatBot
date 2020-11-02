# DocBot+ : An Elisa like Prolog Chatbot
This is a chatbot called DocBot+ created using Prolog. It can converse and reply to general statements and queries, and can diagnose diseases like COVID and Cholera according to the user's symptoms.
<br>
This project is a part of my CS312 Artificial Intelligence Course.
<br>
<br>
Feel free to explore and improve the code, also try to find out some hidden easter eggs!
<br>
## Instructions to execute
>You can either run the chatbot from an editor like VS Code with the necessary Prolog extension (interpreter) installed, or by installing the SWI Prolog interpreter into your system. 
<br>
> Make sure you have SWI Prolog installed before following the mentioned steps.
1. Extract the repo to a directory and open terminal in it.
2. Enter the following command to start the prolog interpreter.
~~~
$ swipl
~~~
3. In the prolog interpreter, typt the following line to load the chatbot's files.
~~~
?− ['docbot_main.pl'].
~~~
4. The predicate to invoke the chatbot is
~~~
?- hi_docbot.
~~~

## Following is a sample conversation with the chatbot.
~~~

Hi, my name is DocBot+. How are you?

|: hi
Hi, I am DocBot+. How can I help?

|: I'm good
That's great!

|: how are you
I'm doing great. Thanks for asking.

|: what are you
Its Who, not what!

|: I am sorry
Apologies are not necessary.

|: how is the weather today
Ask Google

|: Remind me to make a doctor's appointment
Sorry, I am not your assistant!

|: are we friends
I think you are lonely...

|: I dont like you
Me neither

|: I am sick
Sorry to hear that

Please list your symptoms according to the category so that I can help you out!

Pick a category

1. Head
2. Upper Body
3. Respiratory System
4. Digestive System
5. Psychological

6. consult

|: 1.

Do you have headache?
|: yes.

Are your eyes (or either of your eyes) irritated?
|: yes.

Do you have neck pain?
|: yes.

Do you have a runny nose?
|: yes.

Do you have lack of taste and smell?
|: yes.

noted.


Pick a category

1. Head
2. Upper Body
3. Respiratory System
4. Digestive System
5. Psychological

6. consult

|: 3.

Do you have persistent coughing?
|: yes.

Do you have difficulty breathing?
|: yes.

Do you experience shortness of breath?
|: yes.

Do you have a sore throat?
|: yes.

noted.


Pick a category
1. Head
2. Upper Body
3. Respiratory System
4. Digestive System
5. Psychological

6. consult

|: 6.


**********************Diagnosis**********************
Possible diseases:
YOU HAVE HIGH CHANCES OF COVID

Please get yourself checked at a Hospital at the earliest

******************************************************************
|:Bye

Bye, Enjoy the rest of your day!


~~~

