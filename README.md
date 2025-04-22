## Sample Queries & Expected Output

### 1. Children of john:
```prolog
?- parent(john, Child).
Child = mary ;
Child = tom.

?- sibling(mary, Sibling).
Sibling = tom.

?- grandparent(Grandparent, jake).
Grandparent = john ;
Grandparent = linda ;
Grandparent = robert ;
Grandparent = susan.

?- cousin(emily, Cousin).
Cousin = jake ;
Cousin = anna.

?- cousin(jake, emily).
true.

?- descendant(john, Descendant).
Descendant = mary ;
Descendant = tom ;
Descendant = emily ;
Descendant = jake ;
Descendant = anna.
