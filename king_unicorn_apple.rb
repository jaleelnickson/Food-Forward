class FoodForward
  attr_reader :location

  def initialize(location)
    @location = location
  end

  def donate(food_items)
  	# Save donated food in an array
    @donated_food_items = []
    food_items.each do |food_item|
      @donated_food_items << food_item
    end
  end
    
  def donate_to_needy_people
    # Find needy people in the area
    needy_people = search_for_needy_people(@location)
    # Donate food to the needy people
    needy_people.each do |person|
      person.receive_donated_food(@donated_food_items)
    end
  end
    
  def search_for_needy_people(location)
    # Search for people in need at the given location
    needy_people = []
    needy_people << Person.new(name: "John Doe", location: location)
    needy_people << Person.new(name: "Jane Doe", location: location)
    needy_people
  end
    
  class Person
    attr_reader :name, :location
      
    def initialize(name:, location:)
      @name = name
      @location = location
    end
    
    def receive_donated_food(food_items)
      # Receive donated food and save it in an array
      @received_food_items = []
      food_items.each do |food_item|
        @received_food_items << food_item
      end
    end
  end
end