class Waiter
    
    attr_accessor :experience
    attr_reader :name 
    
    @@all = []
    
    def initialize(name, experience)
        @name = name 
        @experience = experience
        @@all << self
    end 
    
    def self.all
        @@all
    end 
    
    def new_meal(customer, total, tip)
        new_meal = Meal.new(self, customer, total, tip)
        new_meal
    end 
    
    def meals
        Meal.all.select { |meal| meal.waiter == self}
    end 
    
    def best_tipper
        self.meals.sort_by { |meal| meal.tip }.last.customer
    end 
    
end