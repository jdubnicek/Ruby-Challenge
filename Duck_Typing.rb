In object-oriented programming, Duck Typing refers to an object being defined by what methods can be called on it and 
and what operations can be performed on it, rather than rely on its inheritance from a particular class. As the old saying
goes, "If it walks like a duck and talks like a duck, it's a duck."

Below is an example of Duck Typing:

class CAR
	def honk
		puts "Beep Beep"
	end

	def race
		puts "The car speeds off"
	end
end


class TowTruck	
	def honk
		puts "HONK HONK"
	end

	def race
		puts "The truck slowly drives away"
	end
end


def on_the_highway(car)
	puts car.honk
	puts car.race
end

red_car = Car.new
old_truck = TowTruck.new

red_car.honk #=> "Beep Beep"
red_car.race #=> "The car speeds off"

old_truck.honk #=> "HONK HONK"
old_truck.race #=> "The truck slowly drives away"

on_the_highway(Car.new)
#=> "Beep Beep"
#=> "The car speeds off"
on_the_highway(TowTruck.new)
#=> "HONK HONK"
#=> "The truck slowly drives away"