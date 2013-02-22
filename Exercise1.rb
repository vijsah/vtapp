class Exercise1
=begin  #getting value from user so commented the initializer
  def initialize(str)
    @str = str
  end
=end
	attr_writer :str
	def sentence()

		h=Hash.new
		@str.each_char do |i|	
      #(i.ord >= 97 && i.ord<= 122) || (i.ord >= 65 && i.ord<= 90)
      #No need to use method ord
			if (i >= 'a' && i <= 'z') || (i >= 'A' && i <= 'Z')  
				h[i]=@str.count(i)
			end	
		end
		p h
	end

	def enter_string
		p 'Enter String (Press Enter key when done):'
		@str= gets.chomp
	end

	def print_string
		p @str
	end
end

ex = Exercise1.new
ex.enter_string
ex.print_string
ex.sentence()