# frozen_string_literal: true

class Cli
  
  def run
    welcome
    Api.get_makeup
    main
  end
  
  def main
    print_all
  end
  
  def print_all
    Makeup.all.each.with_index(1) { |p, index| puts "#{index}.) #{p.name}.) #{p.price} .) #{p.description}.) #{p.product_api_url}".colorize(:light_magenta) }
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
end
  
  