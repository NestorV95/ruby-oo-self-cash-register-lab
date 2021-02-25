require "pry"
class CashRegister
  attr_accessor :total
  attr_reader :title, :price, :discount

    def initialize(discount=0)
       @total = 0
       @discount = discount
       @items=[]
    end 
   
    def add_item(title, price, quantity=1)
        @total += (price * quantity)
        @last = (price * quantity)
        until quantity == 0
        @items << title
        quantity -= 1
        end
    end
     
    def apply_discount
        if @discount==0
          "There is no discount to apply." 
        else 
           @total -= (0.01*@discount * @total).to_i
           "After the discount, the total comes to $#{@total}."
        end
        
    end

    def items
      @items
    end

    def void_last_transaction
      self.total -= @last
      if total == 0.0
        "returns the total to 0.0 if all items have been removed"
      end
    end

end