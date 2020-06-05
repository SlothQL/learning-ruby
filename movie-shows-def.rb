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

def choose_action(arr, genre)

  puts "What would you like to do? Add, update, display or delete?"

    action = gets.chomp
    action.downcase!

  if action == "add" 
    puts "What #{genre} would you like to add? "
    title = gets.chomp.gsub(/\s+/, "_").downcase.to_sym
    if arr[title].nil?
      puts "And the rating?"
      rating = gets.chomp.to_f
      arr[title] = rating
      puts "#{title.to_s.tr("_"," ").split.map(&:capitalize).join(' ')}: #{rating} has been added to your list!"
    else 
      puts "This #{genre} already exists!"
    end
  end

  if action == "update"
    puts "What #{genre} would you like to update?"
    title = gets.chomp.gsub(/\s+/, "_").downcase.to_sym
    if arr[title].nil?
      puts "Error. #{title.to_s.tr("_"," ").split.map(&:capitalize).join(' ')} cannot be found!"
    else 
      puts "What is the new rating?"
      rating = gets.chomp.to_f
      arr[title] = rating
    end
  end

  if action == "display"
    arr.each {|k,v| puts "#{k.to_s.tr("_"," ").split.map(&:capitalize).join(' ')}: #{v}"}
  end

  if action == "delete"
    puts "What #{genre} would you like to delete?"
    title = gets.chomp.gsub(/\s+/, "_").downcase.to_sym
    if arr[title].nil?
      puts "Error. #{title.to_s.tr("_"," ").split.map(&:capitalize).join(' ')} cannot be found!"
    else
      arr.delete(title)
    end
  end

  unless action == "delete" || action == "update" || action == "display" || action == "add"
    puts "Error. Invalid command!"
  end
end

if result == "movies" || result == "movie"
  choose_action(movies, "movie")
else 
  choose_action(tv_shows, "TV Show")
end