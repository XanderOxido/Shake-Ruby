#Shake Shack


class MilkShake
	def initialize 
		@base_price = 5
		@ingredients = []    
	end

	def add_ingredient(ingredient)
    	@ingredients.push(ingredient)
	end
	
	def price_of_milkshake
		total_price_of_milkshake = @base_price
		@ingredients.each do |ingredient|
			total_price_of_milkshake += ingredient.price
        end	
    end
end

class Ingredient
	attr_reader :name, :price
	def initialize(name, price)
		@name = name
		@price = price
	end
end


class ShoppingCart
	def initialize 
	    @item_sakes = []
	end
	#Este metodo añade los batidos a la lista

    def add_shake (shake)
        @item_sakes.push(shake)
    end   
    
    def totalfull
        @item_sakes.each do |item|
        	
        	now = Time.now

	        if now.saturday? || now.sunday?
        		item.total_price_of_milkshake = item.total_price_of_milkshake * 0.10
        	elsif item.total_price_of_milkshake >= 100 
        		  item.total_price_of_milkshake = item.total_price_of_milkshake * 0.05
        		
        	end

        	total_de_todo += item.total_price_of_milkshake
	    end 
	end       
end	    



nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

end



