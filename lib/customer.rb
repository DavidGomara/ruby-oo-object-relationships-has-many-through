class Customer
    
    attr_accessor :age
    attr_reader :name 
    
    @@all = []
    
    def initialize(name, age)
        @age = age
        @name = name
        @@all << self
    end 
    
    def self.all
        @@all
    end 
    
    def new_meal(waiter, total, tip)
        new_meal = Meal.new(waiter, self, total, tip)
        new_meal
    end 
    
    def meals
        Meal.all.select { |meal| meal.customer == self }
    end 
    
    def waiters
        self.meals.collect { |meal| meal.waiter }
    end 
    
end