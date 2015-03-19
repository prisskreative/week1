require 'pstore'

store = PStore.new('stuff.pstore')

store.transaction do 
	store[:food]    = 'Pizza(duh)'
	store[:dessert] = 'pie'
	store[:drink]   = 'coke'	
end

#After the block thing are save it to the file

=begin
store.transaction do 
	puts "FOOD", store[:food] 
	puts "DESSERT", 'pie'
	puts "DRINK", 'coke'

	store[:drink] = "dsjjfjkfj"
end

=end