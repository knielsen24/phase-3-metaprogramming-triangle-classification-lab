require 'pry'

# the class needs 3 arguments
# two sides must be greater than the 3rd

class Triangle
	attr_reader :a, :b, :c
	attr_writer :kind

	def initialize(a, b, c)
		@a = a
		@b = b
		@c = c
		@kind = self.kind
	end

	def kind
		if @a <= 0 || @b <= 0 || @c <= 0
			raise TriangleError
		elsif @a + @b <= @c || @b + @c <= @a || @c + @a <= @b
			raise TriangleError
		elsif @a == @b && @b == @c
			:equilateral
		elsif @a != @b && @b != @c && @c != @a
			:scalene
		elsif @a == @b || @b == @c || @c == @a
			:isosceles
		end
	end

	class TriangleError < StandardError
	end

end

# equilateral = Triangle.new(2, 2, 2)
# isoceles = Triangle.new(2, 3, 3)
# scalene = Triangle.new(1, 2, 3)


def reload
	load "lib/triangle.rb"
end

binding.pry

