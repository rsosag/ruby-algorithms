# frozen_string_literal: true

# Problem
# You have a number of linear equations (that is, equations that look like "2x + 10y + 8z = 54"),
# and you want to figure out the solution: the values of x, y, and z. You have as
# many equations as you have variables, so you can be certain of a unique solution.
#
#
# Solution
# Create two Matrix objects. The first Matrix should contain the coefficients of your
# equations (the 2, 10, and 8 of “2x + 10y + 8z = 54”), and the second should contain
# the constant results (the 54 of the same equation). The numbers in both matrices
# should be represented as floating-point numbers, rational numbers, or BigDecimal
# objects: anything other than plain Ruby integers.
# Then invert the coefficient matrix with Matrix#inverse , and multiply the result by
# the matrix full of constants. The result will be a third Matrix containing the solutions
# to your equations.
# For instance, consider these three linear equations in three variables:
# 2x + 10y + 8z = 54
# 7y + 4z = 30
# 5x + 5y + 5z = 35

# To solve these equations, create the two matrices:
require 'matrix'
coefficients = [[2, 10, 8], [0, 7, 4], [5, 5, 5]].map do |row|
  row.map { |x| Rational(x) }
end

coefficients = Matrix[*coefficients]
constants = Matrix[[Rational(54)], [Rational(30)], [Rational(35)]]
# Take the inverse of the coefficient matrix, and multiply it by the results matrix. The
# result will be a matrix containing the values for your variables:
solutions = coefficients.inverse * constants
puts solutions # to show result
# This means that, in terms of the original equations, x = 1, y = 2, and z = 4.
