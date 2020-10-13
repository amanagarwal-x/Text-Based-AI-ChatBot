:- dynamic has/1, has/2.
:- dynamic person/1.

has(person, symptom).

start :-
    nl,
    write("Sorry to hear that"), nl,
    write("Please list your symptoms according to the category so that I can help you out!"), nl, nl,
    choose_category.

/*diagnosis on fixed number of symptoms */
covid(X) :-
    
    has(X, headache),
    has(X, runny_nose),
    has(X, lack_of_taste),
    has(X, coughing),
    has(X, difficulty_breathing),
    has(X, shortness_of_breath),
    has(X, sore_throat).

cholera(X) :-
    has(X, abdominal_pain),
    has(X, acid_reflux),
    has(X, loss_of_appetite),
    has(X, heartburn).

check_cholera(X) :-
    (has(X, abdominal_pain),
    has(X, acid_reflux),
    has(X, loss_of_appetite))
     -> write('Mild chance of').

check_covid(X) :-
    (has(X, headache),
    has(X, runny_nose),
    has(X, lack_of_taste))
    -> write('Mild chance of').

/* chooses category to diagnose */

choose_category :- write('Pick a category'), nl,nl,
              write('1. Head'), nl,
              write('2. Body'), nl,
              write('3. Respiratory System'), nl,
	          write('4. Digestive System'), nl,
	          write('5. Psychological'), nl,
              nl, write('6. consult'), nl, nl,
	            read(X),
	            nl,
	      (    X == 1 -> head_category;
               X == 2 -> body_category;
               X == 3 -> respiratory_system_category;
               X == 4 -> digestive_system_category;
               X == 5 -> psychological_category;
               X == 6 -> consult(patient)).

/*diagnosis */

consult(X) :-
       write('----------Diagnosis----------'),nl, write('Possible diseases: '), nl, nl,
        (   covid(X) -> write('High chances of COVID-19'),nl, warn ; check_covid(X) -> write(' COVID-19'), nl, warn; nl),
        (   cholera(X) -> write('Cholera'),nl, warn ; check_cholera(X) -> write(' Cholera'), nl, warn; nl), nl,
       write("------------------------------"), nl, nl.

warn :-  nl, write("Please get yourself checked at a Hospital at the earliest.").

/* different categories based on symptoms */

head_category :-
                write('Do you have headache?'), nl,
		        read(A1),nl,
                (A1 == yes -> assert(has(patient, headache)),nl ; nl),
		        write('Are your eyes irritated? '), nl,
		        read(B1), nl,
		        (B1 == yes -> assert(has(patient, irritated_eyes)), nl; nl),
                write('Do you have neck pain?'), nl,
                read(C1), nl,
                (C1 == yes -> assert(has(patient, neck_pain)), nl ; nl),
                write('Do you have a runny nose?'), nl,
                read(E1), nl,
                (E1 == yes -> assert(has(patient, runny_nose)), nl; nl),
                write('Do you have lack of taste and smell?'), nl,
                read(F1), nl,
                (F1 == yes -> assert(has(patient, lack_of_taste)), nl; nl),
                write('noted.'), nl,
                choose_category.

body_category :-
                write('Do you have back pain?'), nl,
                read(A2), nl,
                (   A2 == yes -> assert(has(patient, back_pain)), nl; nl),
                write('Do you have chest pain?'), nl,
                read(B2), nl,
                (   B2 == yes -> assert(has(patient, chest_pain)), nl; nl),
                write('Do you experience heartburn?'), nl,
                read(C2), nl,
                (   C2 == yes -> assert(has(patient, heartburn)), nl; nl),
                write('noted.'), nl,
                write('Are you experiencing pain from joints?'), nl,
                read(D6), nl,
                (   D6 == yes -> assert(has(patient, joint_pain)), nl; nl),
                write('Do you experience muscle ache?'), nl,
                read(E6), nl,
                (   E6 == yes -> assert(has(patient, muscle_ache)), nl; nl),
                choose_category.

respiratory_system_category :-
                write('Do you have persistent coughing?'), nl,
                read(A3), nl,
                (   A3 == yes -> assert(has(patient, coughing)), nl; nl),
                write('Do you have difficulty breathing?'), nl,
                read(C3), nl,
                (   C3 == yes -> assert(has(patient, difficulty_breathing)), nl; nl),
                write('Do you experience shortness of breath?'), nl,
                read(D3), nl,
                (   D3 == yes -> assert(has(patient, shortness_of_breath)), nl; nl),
                write('Do you have a sore throat?'), nl,
                read(E3), nl,
                (   E3 == yes -> assert(has(patient, sore_throat)), nl; nl),
                write('noted.'), nl,
                choose_category.

digestive_system_category :-
                write('Do you feel abdominal pain?'), nl,
                read(A4), nl,
                (   A4 == yes -> assert(has(patient, abdominal_pain)), nl; nl),
                write('Do you experience acid reflux?'), nl,
                read(B4), nl,
                (   B4 == yes -> assert(has(patient, acid_reflux)), nl; nl),
                write('Do you experience loss of appetite?'), nl,
                read(G4), nl,
                (   G4 == yes -> assert(has(patient, loss_of_appetite)), nl; nl),
                choose_category.

psychological_category :-
                write('Are you anxious?'), nl,
                read(A5), nl,
                (   A5 == yes -> assert(has(patient, anxiety)), nl; nl),
                write('Are you experiencing insomnia?'), nl,
                read(F5), nl,
                (   F5 == yes -> assert(has(patient, insomnia)), nl; nl),
                write('Do you experience irritability?'), nl,
                read(G5), nl,
                (   G5 == yes -> assert(has(patient, irritability)), nl; nl),
                write('Do you experience tiredness?'), nl,
                read(J5), nl,
                (   J5 == yes -> assert(has(patient, tiredness)), nl; nl),
                write('noted.'), nl,
                choose_category.
