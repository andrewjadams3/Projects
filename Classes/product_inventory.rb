class Product
	attr_reader :id, :price, :quantity

	def initialize(id, price, quantity)
		@id = id
		@price = price
		@quantity = quantity
	end

end

class Inventory
	attr_reader :items

	def initialize
		@items = []
	end

	def add_item(item)
		items.push(item)
	end

	def value
		total = 0
		items.each do |x| 
			total += (x.price * x.quantity)
		end
		total
	end

end

if __FILE__ == $PROGRAM_NAME
	
	carrots = Product.new("carrot", 1, 13)
	pencils = Product.new("pencil", 0.15, 112)
	buckets = Product.new("bucket", 4, 22)

	inventory = Inventory.new

	[carrots, pencils, buckets].each {|x| inventory.add_item(x)}

	puts "Total inventory value is $#{inventory.value}"
end