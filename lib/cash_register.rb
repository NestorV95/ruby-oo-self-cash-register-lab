
class CashRegister
    attr_reader :title, :discount, :price
    
    @@items=[]
    
    def initialize(discount=0)
       @total = 0
       @discount = discount
    end
    def total
       @total
    end
    
    def add_item(title, price, quantity=1)
       @title = title
       @price = price
       @total += @price
       
    end

    def apply_discount

    end
     
    def self.items
      @@items
    end

    def void_last_transaction

    end


end