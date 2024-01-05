# Text-based Game Challenge
## load screen image
puts '....:......................................................
...:.*@@@@@@@@@@@@@@@@@@@@@@@@@@@@@:... ..#@@@@@@@@@@@@@@@@@:.. ..
.....@@@@@@@@@@@@@@@@@@@@@@@@@@@@%..     ..:+*#@@@@@@@@@@@@@+.. ..
.....@@@@@@@@@@@@@@@@@@@@@@%%@@@@@:.      .:++%@@@@@@@@@@@@@+.. ..
.....@*-::==-..................:+%:.      .......-%@@@@@@@@@+.. ..
.....@%#++-==.........-#****-:......             ..-@@@@@@@@+.. ..
.....@@@@%#%%##@@@%+=...=@@@@@#..                  .=@@@@@@@+.. ..
.....@@@@@@@@@@@@@@@@+...=@@@@@%:.                 ..-@@@@@@+.. ..
.....@@@@@@@@@@@@@@@@@....-@@%:..                    .=@@@@@+.. ..
.....@@@@@@@@@@@@@@@@@+.  ....                       ..*@@@@+.. ..
.....@@@@@@@@@@@@@@@@@@-..                            .-@@@@+.. ..
.....@@@@@@@@@@@@@@@@@@@=..............               .:@@@@+.. ..
.....@@@@@@@@@@@@@@@@@@@@+##%@@@%%@@@#..              ..%@@@+.. ..
.....@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@*-...           ..@@@+.. ..
.....#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%...          ..*@@-.. ..
.... .......................................................... ..
...:...........................BREAK-IN........................ ..
....:........................................................:. ..'
## display image
def display_ascii
    File.readlines('shooter.txt') do |line|
      line
    end
  end

## method call
puts display_ascii


# display greeting
puts 'Welcome to Break-In, choose your role.'
# pick role
puts 'Bad guy, or good guy?'
player_role = gets.chomp.capitalize
# pick name
puts 'Enter your name'
player_name = gets.chomp.capitalize

#path for bad guy
if player_role == 'Bad'
    stealth = 100
    health = 90

    puts "Current status for #{player_name}"
    puts "#{player_role} guys start with: health:#{health}/ and stealth:#{stealth}"

    puts 'You are currently downstairs, where would you like to go? Upstairs, or stay downstairs?'
    puts 'Be mindful, others are in the house...'
    puts 'You can also run..'
    movement = gets.chomp.capitalize

    ## Upstairs choice
    if movement == 'Upstairs'
        puts 'Stairs creaked, homeowners alerted'
        stealth -= 10
        puts "Stealth has decreased: #{stealth}"
        puts 'Where next? Bedroom 1, bedroom 2, bedroom 3?'

        next_movement = gets.chomp.capitalize
        if next_movement == 'Bedroom 1' || next_movement == '1'
            puts 'This is the spare bedroom'
            puts 'You stepped on a lego'
            health -= 10
            puts 'Homeowner knows your location'
            stealth -= 10
            puts "Health and stealth has decreased: s:#{stealth} h:#{health}"
            puts 'Where next? Bedroom 2, bedroom 3?'
            next_movement = gets.chomp.capitalize

            if next_movement == 'Bedroom 3' || next_movement == '3'
                puts 'This is the master bedroom'
                puts 'Homeowner appears with a bat'
                stealth -= 80
                health -= 90
                puts "Stealth has decreased: #{stealth}"                
                puts "Light's out, you lose! Health: #{health}"
            elsif next_movement == 'Bedroom 2' || next_movement == '2'
                puts 'This is the spare bedroom'
                puts 'Homeowner knows your location'
                stealth -= 10
                puts "Stealth has decreased: #{stealth}"
                puts 'Where next? bedroom 3?'
                next_movement = gets.chomp.capitalize

                if next_movement == 'Bedroom 3' || next_movement == '3'
                    puts 'This is the master bedroom'
                    puts 'Homeowner appears with a bat'
                    stealth -= 70
                    health -= 70
                    puts "Stealth has decreased: #{stealth}"                
                    puts "Light's out, you lose! Health: #{health}"
                end
            end


        
        elsif next_movement == 'Bedroom 2' || next_movement == '2'
            puts 'This is the spare bedroom'
            puts 'Homeowner knows your location'
            stealth -= 10
            puts "Stealth has decreased: #{stealth}"
            puts 'Where next? Bedroom 1, bedroom 3?'

        elsif next_movement == 'Bedroom 3' || next_movement == '3'
            puts 'This is the master bedroom'
            puts 'Homeowner appears with a bat'
            stealth -= 90
            health -= 90
            puts "Stealth has decreased: #{stealth}"
            puts "Light's out, you lose!"
        else
            puts "You have fled...goodbye."
        end


    ## Downstairs choice
    elsif movement == 'Downstairs'
        puts 'Where would you like to go?'
        puts 'Living room, kitchen, office'

        next_movement = gets.chomp.capitalize

        if next_movement == 'Office'
            puts 'Office is locked'
            puts 'Where would you like to go?'
            next_movement = gets.chomp.capitalize
        end

    else
        puts 'You have fled...Goodbye'
    

    end 


end 

#path for good guy
if player_role == 'Good'
    stealth = 80
    health = 100

    puts "Current status for #{player_name}"
    puts "#{player_role} guys starts with: health:#{health}/ and stealth:#{stealth}"
end


