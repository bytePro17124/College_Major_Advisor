% Matthew Early | me298414@ohio.edu
% CS4800 Artificial Intelligence | Fall 16-17
% Assignment 5 | Colleg Major Advisory Prolog Program

major(psychology) :- helper(no), leader(no), creator(no), outdoors(no), data_processor(no).
major(statistics) :- helper(no), leader(no), creator(no), outdoors(no), data_processor(yes).
major(forestry) :- helper(no), leader(no), creator(no), outdoors(yes), data_processor(no).
major(anthropology_and_archaeology) :- helper(no), leader(no), creator(no), outdoors(yes), data_processor(yes).
major(creative_writing) :- helper(no), leader(no), creator(yes), outdoors(no), data_processor(no).
major(electronics_engineering) :- helper(no), leader(no), creator(yes), outdoors(no), data_processor(yes).
major(history) :- helper(no), leader(no), creator(yes), outdoors(yes), data_processor(no).
major(environmental_sciences) :- helper(no), leader(no), creator(yes), outdoors(yes), data_processor(yes).
major(business_management) :- helper(no), leader(yes), creator(no), outdoors(no), data_processor(no).
major(economics) :- helper(no), leader(yes), creator(no), outdoors(no), data_processor(yes).
major(wildlife_management) :- helper(no), leader(yes), creator(no), outdoors(yes), data_processor(no).
major(agricultural_engineering) :- helper(no), leader(yes), creator(no), outdoors(yes), data_processor(yes).
major(dramatic_arts) :- helper(no), leader(yes), creator(yes), outdoors(no), data_processor(no).
major(computer_science) :- helper(no), leader(yes), creator(yes), outdoors(no), data_processor(yes).
major(agricultural_business_and_management) :- helper(no), leader(yes), creator(yes), outdoors(yes), data_processor(no).
major(geological_engineering) :- helper(no), leader(yes), creator(yes), outdoors(yes), data_processor(yes).
major(social_work_and_services) :- helper(yes), leader(no), creator(no), outdoors(no), data_processor(no).
major(bio_engineering) :- helper(yes), leader(no), creator(no), outdoors(no), data_processor(yes).
major(botany) :- helper(yes), leader(no), creator(no), outdoors(yes), data_processor(no).
major(animal_sciences) :- helper(yes), leader(no), creator(no), outdoors(yes), data_processor(yes).
major(criminal_justice) :- helper(yes), leader(no), creator(yes), outdoors(no), data_processor(no).
major(chemical_engineering) :- helper(yes), leader(no), creator(yes), outdoors(no), data_processor(yes).
major(veterinary_sciences) :- helper(yes), leader(no), creator(yes), outdoors(yes), data_processor(no).
major(cell_and_molecular_biology) :- helper(yes), leader(no), creator(yes), outdoors(yes), data_processor(yes).
major(pre_law) :- helper(yes), leader(yes), creator(no), outdoors(no), data_processor(no).
major(aerospace_aeronautical) :- helper(yes), leader(yes), creator(no), outdoors(no), data_processor(yes).
major(chemistry) :- helper(yes), leader(yes), creator(no), outdoors(yes), data_processor(no).
major(chemical_engineering) :- helper(yes), leader(yes), creator(no), outdoors(yes), data_processor(yes).
major(fine_arts) :- helper(yes), leader(yes), creator(yes), outdoors(no), data_processor(no).
major(astrophysics) :- helper(yes), leader(yes), creator(yes), outdoors(no), data_processor(yes).
major(physics) :- helper(yes), leader(yes), creator(yes), outdoors(yes), data_processor(no).
major(philosophy) :- helper(yes), leader(yes), creator(yes), outdoors(yes), data_processor(yes).

advise_major :- nl, write('Note that his program only accepts plain \'yes.\' or \'no.\' answers.'), nl, nl, nl,
	write('Q1/5: Would you prefer to do something that is helpful to others? (yes/no)|:'), read(V), nl,
	assert(helper(V)),
	write('Q2/5: Do you enjoy being a leader or organizer? (yes/no)'), read(W), nl,
	assert(leader(W)), 
	write('Q3/5: Is it important to be in a major that allows creative freedom? (yes/no)'), read(X), nl,
	assert(creator(X)),
	write('Q4/5: Do you prefer to be outdoors over indoors? (yes/no)'), read(Y), nl,
	assert(outdoors(Y)),
	write('Q5/5: Do you enjoy processing data and working with technology? (yes/no)'), read(Z), nl,
	assert(data_processor(Z)), 
	major(A), nl, write('In your case, we recommend you go for a major in -> '), write(A), nl, nl,
	retract(helper(V)), retract(leader(W)), retract(creator(X)),
	retract(outdoors(Y)), retract(data_processor(Z)).
