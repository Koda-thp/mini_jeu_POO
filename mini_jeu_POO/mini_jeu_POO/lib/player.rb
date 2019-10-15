class Player
    attr_accessor :name.to_s, :life_points
    @life_points = 10
    
    def initialize (name_to_save)
        @name = name_to_save
        @life_points = 10
    end

    def show_state
        puts "#{name} à #{@life_points} points de vie "

    end

    def gets_damage (damage)
        @life_points = @life_points - damage
        if @life_points == 0
            puts " Le joueur #{name} est mort ! CHEH"        
        end

    end


    def attacks(player2)

        puts "Le joueur #{name} attaque #{player2.name} !"
    
        player2_damage = compute_damage 
    
        puts "Ca inflige #{player2_damage} points de DEGAT."
    
        player2.gets_damage(player2_damage)
    
      end
    
    

    def compute_damage
        return rand(1..6)
    end


end

class HumanPlayer < Player
    attr_accessor :weapon_level
    
    def initialize (name_to_save)
        @name = name_to_save
        @life_points = 100
        @weapon_level = 1
    end
    def show_state 
        puts "#{name} à #{@life_points} points de vie, et une arme de niveaux #{weapon_level} c'est fabuleux ! "
    end

    def compute_damage
        rand(1..6) * @weapon_level
    end

    def search_weapon
        weapon_level = rand(1..6)
        puts" tu as trouvé une arme de niveaux #{weapon_level}" 
        if weapon_level > @weapon_level
            @weapon_level = weapon_level
            puts "Yeahh"
        else 
            puts "FUUUUUUUUUUUUUUUUUUUUCK"
        end
    end

    def search_health_pack
        health_pack = rand(1..6)
        if health_pack == 1
            puts "Tu n'as rien trouvé..."
        elsif health_pack == (2;3;4;5)
            puts"Bravo, tu as trouvé un pack de +50 points de vie !"
            @life_points = @life_points +50
            if
                @life_points > 100
            then 
            @life_points = 100
            end
        else
            puts "Waow, tu as trouvé un pack de +80 points de vie !"
            @life_points = @life_points +80
            if
                @life_points > 100
            then 
            @life_points = 100
            end 
        end
        
    
    end



end
