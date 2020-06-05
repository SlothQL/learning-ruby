movies = {
  star_wars: 3.5,
  the_nightmare_before_christmas: 5,
  the_colour_of_magic: 3.8,
  arrival: 4.1
}

tv_shows = {
  westworld: 4.8,
  game_of_thrones: 2,
  mr_robot: 5,
  parks_and_recreation: 4.9
}

flag = false

while flag == false
  puts "Movies or TV Shows?"
  result = gets.chomp
  result.downcase!
  if result == "movies" || result == "movie" || result == "tv shows" || result == "tv show"
    flag == true
    break
  else
    puts "Error. Please choose between:"
  end
end

if result == "movies" || result == "movie"

  puts "What would you like to do? Add, update, display or delete?"

  choice = gets.chomp
  choice.downcase!

  case choice
    when "add"
      puts "What movie would you like to add? "
      title = gets.chomp.gsub(/\s+/, "_").downcase.to_sym
      if movies[title].nil?
        puts "And the rating?"
        rating = gets.chomp.to_f
        movies[title] = rating
        puts "#{title.to_s.tr("_"," ").split.map(&:capitalize).join(' ')}: #{rating} has been added to your list!"
      else 
        puts "This movie already exists!"
      end

    when "update"
      puts "What movie would you like to update?"
      title = gets.chomp.gsub(/\s+/, "_").downcase.to_sym
      if movies[title].nil?
        puts "Error. #{title.to_s.tr("_"," ").split.map(&:capitalize).join(' ')} cannot be found!"
      else 
        puts "What is the new rating?"
      rating = gets.chomp.to_f
      movies[title] = rating
      end

    when "display"
      movies.each {|k,v| puts "#{k.to_s.tr("_"," ").split.map(&:capitalize).join(' ')}: #{v}"}

    when "delete"
      puts "What movie would you like to delete?"
      title = gets.chomp.gsub(/\s+/, "_").downcase.to_sym
      if movies[title].nil?
        puts "Error. #{title.to_s.tr("_"," ").split.map(&:capitalize).join(' ')} cannot be found!"
      else
        movies.delete(title)
      end

    else
<<<<<<< HEAD
      puts "Error. Invalid command!"
    end
=======
    puts "Error. Invalid command!"

  end
>>>>>>> eba63427a84940b08831b8ebf8e1065272429db0

else

  puts "What would you like to do? Add, update, display or delete?"

  choice = gets.chomp
  choice.downcase!

  case choice
    when "add"
      puts "What TV Show would you like to add? "
      title = gets.chomp.gsub(/\s+/, "_").downcase.to_sym
      if tv_shows[title].nil?
        puts "And the rating?"
        rating = gets.chomp.to_f
        tv_shows[title] = rating
        puts "#{title.to_s.tr("_"," ").split.map(&:capitalize).join(' ')}: #{rating} has been added to your list!"
      else 
        puts "This TV Show already exists!"
      end

    when "update"
      puts "What TV Show would you like to update?"
      title = gets.chomp.gsub(/\s+/, "_").downcase.to_sym
      if tv_shows[title].nil?
        puts "Error. #{title.to_s.tr("_"," ").split.map(&:capitalize).join(' ')} cannot be found!"
      else 
        puts "What is the new rating?"
        rating = gets.chomp.to_f
        tv_shows[title] = rating
      end

    when "display"
      tv_shows.each {|k,v| puts "#{k.to_s.tr("_"," ").split.map(&:capitalize).join(' ')}: #{v}"}

    when "delete"
      puts "What TV Show would you like to delete?"
      title = gets.chomp.gsub(/\s+/, "_").downcase.to_sym
      if tv_shows[title].nil?
        puts "Error. #{title.to_s.tr("_"," ").split.map(&:capitalize).join(' ')} cannot be found!"
      else
         tv_shows.delete(title)
      end

    else
      puts "Error. Invalid command!"
    end
<<<<<<< HEAD
    
end
=======
  end 

end
>>>>>>> eba63427a84940b08831b8ebf8e1065272429db0
