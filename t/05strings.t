# Concat
System out: '1..','3'.

# Substring
System out: ('nok 1 String substring' copyFrom: 2 to: 19). 

# Replace
string: ( 'nok 2 String replace' replace: 'nok' with: 'ok').
System out: string.

# Match
( 'Some message' match: 'message' )
   ifTrue:  { System out: 'ok  3 String match' }
   ifFalse: { System out: 'nok 3 String match' }.

# Length
( 'abcdef' length = 6 )
  ifTrue:  { System out: 'ok  4 String length' }
  ifFalse: { System out: 'nok 4 String length' }.
