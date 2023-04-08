%Manipulations to allow variable assignment when running several times locally
:- dynamic hasWaterStorage/1. %  '/1' is number of params that rule takes 
:- dynamic hasFlowers/1.
:- dynamic hasFruit/1.
:- dynamic hasFeatheryLeaf/1.
:- dynamic isBushy/1.
:- dynamic hasSpikes/1.
:- dynamic hasLongStem/1.
:- dynamic hasColoredLeaf/1.


type(x,'succelent') :- not(hasFlowers(x)), not(hasFruit(x)), hasWaterStorage(x).
type(x,'fruiting') :- hasFruit(x), not(hasWaterStorage(x)), !. % '!' is full stop, to stop looking for other matches if one has been found. Ony one type per plant
type(x,'flowering') :- hasFlowers(x), not(hasWaterStorage(x)), !.
type(x,'decorative_foilage') :- not(hasFlowers(x)), not(hasFruit(x)), not(hasWaterStorage(x)), !.

form(x, 'tree') :- hasLongStem(x), not(isBushy(x)), !.
form(x, 'bush') :- not(hasLongStem(x)), isBushy(x), !.
form(x, 'bushy-tree') :- hasLongStem(x), isBushy(x), !.
form(x, 'misc') :- not(hasLongStem(x)), not(isBushy(x)), !.

%%% Succulents 🔽

plant(x,'Bear Paws') :- 
    type(x, 'succulent'), 
    leafSize(x,'1'), 
    form(x, 'bush'), 
    hasSpikes(x), 
    interestingLeaf(x).

plant(x,'Burro\'s Tail') :- 
    type(x, 'succulent'),   
    not(hasSpikes(x)).

plant(x,'Cactus') :-
    type(x, 'succulent'),   
    ((leafForm(x,'3'), leafSize(x,'1')) ; (leafForm(x,'4'), leafSize(x,'4'))),
    form(x, 'misc'),
    hasSpikes(x), 
    not(interestingLeaf(x)).

plant(x, 'Aloe Vera') :-
    type(x, 'succulent'),   
    leafForm(x,'3'), 
    leafSize(x,'2'),
    form(x, 'misc'),
    hasSpikes(x), 
    not(interestingLeaf(x)).

% plant(x,'Cactus') :- %REORGANIZED
%     type(x, 'succulent'),   
%     leafForm(x,'3'), 
%     leafSize(x,'1'),
%     form(x, 'misc'),
%     hasSpikes(x), 
%     not(interestingLeaf(x)).

%%% Foilage 🔽

plant(x,'Panda Plant') :- 
    type(x,'decorative_foilage'), 
    leafForm(x,'2'), 
    leafSize(x,'2'), 
    form(x, 'bush'),
    interestingLeaf(x).

plant(x,'Asparagus Fern') :-
    type(x, 'decorative_foilage'),   
    leafForm(x,'5'), 
    leafSize(x,'1'),
    form(x, 'bushy-tree'),
    interestingLeaf(x).

plant(x,'Boston Fern') :-
    type(x, 'decorative_foilage'),   
    leafForm(x,'5'), 
    leafSize(x,'3'),
    form(x, 'bushy-tree'),
    interestingLeaf(x).

plant(x,'Bird\'s Nest Fern') :-
    type(x, 'decorative_foilage'),   
    leafForm(x,'5'), 
    leafSize(x,'2'),
    form(x, 'bush'),
    interestingLeaf(x).

plant(x, 'Calathea') :-
    type(x, 'decorative_foilage'),   
    leafForm(x,'6'), 
    leafSize(x,'2'),
    form(x, 'bush'),
    interestingLeaf(x).

plant(x, 'Cast-Iron Plant') :-
    type(x, 'decorative_foilage'),   
    leafForm(x,'6'), 
    leafSize(x,'3'),
    form(x, 'bush'),
    not(interestingLeaf(x)).

plant(x, 'Chinese Evergreen') :-
    type(x, 'decorative_foilage'),   
    leafForm(x,'3'), 
    leafSize(x,'2'),
    form(x, 'bush'),
    interestingLeaf(x).

plant(x,'Chinese Money Plant'):-
    type(x, 'decorative_foilage'),   
    leafForm(x,'2'), 
    leafSize(x,'2'),
    form(x, 'bushy-tree'),
    not(interestingLeaf(x)).

plant(x,'Peperomia'):-
    type(x, 'decorative_foilage'),   
    leafForm(x,'2'), 
    leafSize(x,'2'),
    form(x, 'bush'),
    interestingLeaf(x).

plant(x,'Croton'):-
    type(x, 'decorative_foilage'),   
    leafForm(x,'3'), 
    leafSize(x,'3'),
    form(x, 'bush'),
    interestingLeaf(x).

plant(x,'English Ivy'):-
    type(x, 'decorative_foilage'),   
    leafForm(x,'1'), 
    leafSize(x,'2'),
    form(x, 'bushy-tree'),
    interestingLeaf(x).

plant(x,'Dragon Tree'):-
    type(x, 'decorative_foilage'),   
    leafForm(x,'3'), 
    leafSize(x,'3'),
    form(x, 'bushy-tree'),
    not(interestingLeaf(x)).

plant(x,'Monstera'):-
    type(x, 'decorative_foilage'),   
    leafForm(x,'7'), 
    leafSize(x,'3'),
    form(x, 'bushy-tree'),
    interestingLeaf(x).

%%% Fruiting 🔽

plant(x,'Guiana Chestnut'):-
    type(x, 'fruiting'),   
    leafForm(x,'3'), 
    form(x, 'tree').

plant(x,'Citrus tree'):-
    type(x, 'fruiting'),   
    leafForm(x,'3'), 
    form(x, 'tree').

plant(x,'Avocado tree'):-
    type(x, 'fruiting'),   
    leafForm(x,'6'), 
    form(x, 'tree').

plant(x,'Strawberry'):-
    type(x, 'fruiting'),   
    leafForm(x,'2'), 
    leafSize(x,'1'),
    form(x, 'misc').

%%% Flowering 🔽

plant(x,'Orchid'):-
    type(x, 'flowering'),   
    leafForm(x,'6'), 
    leafSize(x,'3'),
    form(x, 'tree'),
    not(hasSpikes(x)), 
    not(interestingLeaf(x)).

plant(x,'Anthurium') :-
    type(x, 'flowering'),   
    leafForm(x,'7'), 
    leafSize(x,'2'),
    form(x, 'tree'),
    interestingLeaf(x).

plant(x,'Geranium') :-
    type(x, 'flowering'),   
    leafForm(x,'2'), 
    leafSize(x,'2'),
    form(x, 'tree'),
    interestingLeaf(x).

plant(x,'Peace Lilies') :-
    type(x, 'flowering'),   
    leafForm(x,'3'), 
    leafSize(x,'3'),
    form(x, 'misc'),
    not(interestingLeaf(x)).

plant(x,'Cyclamen'):-
    type(x, 'flowering'),   
    leafForm(x,'7'), 
    leafSize(x,'2'),
    form(x, 'bush'),
    interestingLeaf(x).

plant(x,'Jasmine'):-
    type(x, 'flowering'),   
    leafForm(x,'6'), 
    leafSize(x,'2'),
    form(x, 'bushy-tree'),
    not(hasSpikes(x)), 
    interestingLeaf(x).

plant(x,'Begonia'):-
    type(x, 'flowering'),   
    leafForm(x,'8'), 
    leafSize(x,'2'),
    form(x, 'bush'),
    interestingLeaf(x).

plant(x,'Azalea'):-
    type(x, 'flowering'),   
    leafForm(x,'6'), 
    leafSize(x,'2'),
    form(x, 'bush'),
    not(hasSpikes(x)), 
    not(interestingLeaf(x)).

plant(x,'Impatien'):-
    type(x, 'flowering'),   
    leafForm(x,'6'), 
    leafSize(x,'2'),
    form(x, 'bush'),
    hasSpikes(x), 
    not(interestingLeaf(x)).