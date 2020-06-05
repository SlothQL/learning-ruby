Learning Ruby with Codecademy

I am currently learning Ruby using Codecademy and this exercise came up. This programm gives the user the ability to choose whether she/he wants to add, display, delete or update elements of a list of movies.

The first version is the file "movie-list.rb".
I followed the instructions but decided to make a few changes. The biggest issue that I saw with the original code was the input and how it would be stored within the hash.

The hash used symbols and stored date like this "StarWars:" but as a user if I wanted to add a new movie to my list I would type "Star Wars" and not "StarWars" and then it would be added to my hash looking like this "Star Wars":

I didn't like to incosistency and decided to add code to transform the input into snake cases when adding it to the hash and  code to transform it back into a string when using the title in an output.

The second version of this exercise is the file "movie-shows.rb". I used the code I had written before but added TV Shows to the programm. Now the user can choose between movies and tv shows. I copied the same code I had written for the movies, changed the name of the hash and added a while loop to make sure that the user doesn't have to refresh the site when she/he chooses neither movies or tv shows for example through a typing mistake. The only way of breaking out of the while loop is through a valid input.

The code worked fine, but one of the key principles in programming is DRY - Don't repeat yourself. And this version had nealry 40 lines of the same code. 

The third version is called "movies-shows-def.rb". I created one function and placed the functionality of choosing the action add, update, delete and display in it. Once the user has given the input movies or tv shows, the programm invokes the function either with the movies hash or the tv show hash as an argument. 
