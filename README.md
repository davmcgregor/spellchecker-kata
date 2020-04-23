## Task

megasoftware design word processors. Bulid a Spellchecker prototype

## Input/Output table

| Input              | Output               |
| ------------------ | -------------------- |
| "Cat" | "Cat" |
| "Dog" | "Dog" |
| "Dooooog" | "~Dooooog~" |
| "Good cat" | "Good cat" |
| "Good Dooooog" | "Good ~Dooooog~" |
| "These words are spnelt correclty" | "These words are ~spnelt~ ~correclty~" | 
| "There -words are fine"            |
| 1 | "error" |
| true | "error" |

* Check upper/lowercase
* if not a string return an error
* it should leave punctuation alone