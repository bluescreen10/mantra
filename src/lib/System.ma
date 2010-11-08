"" TODO: Rethink this
"" Delclare Native Globals
String: Object new.
Block:  Object new.
null:   Object new.

<load('Object')>.

Integer: Object new.
true: Object new.
false: Object new.
"" Takes care
System: Object new.

System 
   message: 'import:' as: { object |
       "Finds and loads the object using the @INC variable
         if it was already loaded it won't load it again"
       <load(object)>
  };

  message: 'out:' as: { anString |
      <printString(anString)>
  }.


System   
    import: 'Object';
    import: 'Block';
    import: 'True';
    import: 'False';
    import: 'String';
    import: 'Null'.

""  import: 'Collections.Ordered';
""  import: 'Number';
""  import: 'DecimalNumber';
""  import: 'FloatNumber';
