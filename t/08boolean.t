# "Some boolean tests"
System out: '1..6'.

# ""
( true = false )
  ifTrue:  { System out: 'nok 1 true == false' }
  ifFalse: { System out: 'ok  1 true == false' }.

( true = true )
  ifTrue:  { System out: 'ok  2 true == true' }
  ifFalse: { System out: 'nok 2 true == true' }.

# "true"
results: true not.
results: true not not.

true ifTrue:  { System out: 'ok  3 true ifTrue  method'}.
true ifFalse: { System out: 'nok 3 true ifFalse method'}.

# "false"
false ifTrue:  { System out: 'nok 4 false ifTrue  method'}.
false ifFalse: { System out: 'ok  4 false ifFalse method'}.

# "not method"
true not ifFalse: { System out: 'ok  5 true not method' }
         ifTrue:  { System out: 'nok 5 true not method' }. 

# "not method"
false not ifTrue:  { System out: 'ok  6 false not method' }
          ifFalse: { System out: 'nok 6 false not method' }. 