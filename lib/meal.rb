class Meal
    
    attr_accessor :total, :tip
    attr_reader :customer, :waiter
    
    @@all = []
    
    def initialize(waiter, customer, total, tip)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self
    end 
    
    def self.all
        @@all
    end 
    
end