# frozen_string_literal: true

class Cli

  def run
    welcome
    Api.get_makeup
    main
  end

   def welcome
    puts <<-'EOF'

    -------------------------WELCOME TO ADEEBA'S MAKEUP VAULT--------------------------------------
                                                                            __
                                                                          ;"  `;
     _                                                                    |`--'|
    ( `,                                                                  |    |
    |`._)                                          _____________          |    |
    |   |                             __          |+-----------+|         |    |
    |   |                           /`  `\        ||           ||         |    |
    |___|                          |      |       ||           ||         |    |
   (_____)                         |      |       ||           ||         |    |
   |     |                         |      |       |L-----------j|         |    |
   |     |     _____________      / `.__.` \     / +----+---+  /          |    |
   |     |   ,`          ,` `,   |          |   / /    /   /  /           '.__.`               _______________
   |_____|   "           '   '    \        /   / +----+----+ /                ,,,,,,,_________/\              \
  (_______)  ".__________',_,'     \______/   (_____________/                 ;;;;;;;----------/______________/
                                                    ,--------,'".
                                                    `--------`.."
EOF
  end

  def main
    makeup_list
    pick_makeup
    list_selection
    selection
  end

  def print_all
    Makeup.all.each.with_index(1) { |p, index| puts "#{index}.) #{p.name.colorize(:green)}.) #{p.product_type.colorize(:red)}" }
  end

  def user_input
    gets.chomp.downcase #gets the data/ removes extra space / downcases input
  end


  def makeup_list
           puts "Would you like to see the list of make up? y/n"
           input = user_input.downcase
        if input == "yes" || input == "y"
           print_all
        else
           puts "Goodbye"
        end
     end

  def pick_makeup
        puts "Please select a number:".colorize(:cyan)
    end

  def list_selection
             index = user_input.to_i - 1
            last_element = Makeup.all.size - 1 #going thru @@all array get the lenght and subtract 1 because it starts at 0
         if index.between?(0,last_element) #checks that it is in acceptable range
            system "clear"
            makeup = Makeup.all[index]
            puts "name: #{makeup.name}".capitalize.colorize(:red)
            puts "Price: #{makeup.price}".colorize(:green)
            puts "Description: #{makeup.description}".colorize(:yellow)
            puts "image_link: #{makeup.image_link}".colorize(:blue)
        else
            puts "Please enter a valid number:".colorize(:light_red)
            list_selection
        end
    end

    def selection
            puts "\n\nWould you like to pick another one? y/n".colorize(:cyan)
            input = user_input
        if input == "yes" || input == "y"
            print_all
            list_selection
            selection
        else
           puts <<-'EOF'

           __  GOOD BYE!!!     __
( _\    /_ )
\ _\  /_ /
 \ _\/_ /_ _
 |_____/_/ /|
 (  (_)__)J-)
 (  /`.,   /
  \/  ;   /
   | === |

   EOF
        end
    end
end
