movies = {
  star_wars: 3.5,
  the_nightmare_before_christmas: 5,
  the_colour_of_magic: 4.2
}

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
  puts "Error!"

end