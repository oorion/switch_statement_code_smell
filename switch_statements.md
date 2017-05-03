##Switch Statements

#Refactoring Recipes
* Replace Type Code with Subclasses
* Replace Type Code with Module Extension
* Replace Type Code with State/Strategy
Then:
* Replace Conditional with Polymorphism

#Mechanics of Replace Type Code with Subclasses
* Create a factory method
* For each type code value, create a subclass.  Override the getter method of the type code in the subclass to return the relevant value
* Run tests after replacing each type code with value with subclass
* Remove the type getter from the superclass

#Mechanics of Replace Conditional with Polymorphism
* If conditional is part of larger method, extract conditional into its own method
* Pick one of the subclasses.  Create a subclass method that overrides the conditional statement method.  Copy the body of that leg of the conditional statement into the subclass method.
* Run tests
* Remove the copied leg of the conditional statement
* Run tests
* Repeat with each leg of the conditional statement until all legs are turned into subclass methods
* Remove the superclass method

#Tasks
* Employee example
* product usage service
* hokey pokey




Notes
Extract class is needed before you can fix the product usage service
Notice that we're subclassing the employee class in our example.  Subclassing the product usage service seems like a bad first step because the logic that we're switching on seems to primarily relate to adding treatment reasons
