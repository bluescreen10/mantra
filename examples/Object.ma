class Object {

   new {
     # Returns a new instance of the Object class, this is 
     # the very primitive form to instantiate objects
      newInstance: <new(self)>.
      newInstance initialize
   }

   initialize {
     # To be overwritten by subclasses this method, is 
     # handy to put instance's initialization code
   }

}
