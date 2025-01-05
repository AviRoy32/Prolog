%Facts 
owns(jack, car(bmw)). 
owns(john, car(chevy)). 
owns(olivia, car(civic)). 
owns(jane, car(chevy)). 
sedan(car(bmw)). 
sedan(car(civic)). 
truck(car(chevy)). 

%queries
owns(john, X).
owns(john, _ ).
owns(Who, car(chevy)).
owns(jane, X), sedan(X).
owns(jane, X), truck(X).