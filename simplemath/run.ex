IO.puts(Simplemath.square(5))
IO.puts(Simplemath.pow(2, 6))

point = {:point, 50, 50}

# => true
Simplemath.point_inside_circle?(point, {:circle, {:point, 10, 10}, 100})
# => false
Simplemath.point_inside_circle?(point, {:circle, {:point, -10, -10}, 20})

point = {:point, -10, 20}
circle = {:circle, {:point, 0, 0}, 2}
rect = {:rect, {:point, 0, 0}, {:point, 2, 2}}
trapezoid = {:trapezoid, {:point, 0, 0}, {:point, 2, 2}, 2}
triangle = {:triangle, {:point, 0, 0}, {:point, 2, 0}, {:point, 1, 2}}
my_list = [1, 2, 3, 4, 5]

IO.puts(Simplemath.distance({:point, 0, 0}, {:point, 3, 4}))

IO.puts(
  "Point #{inspect(point)} inside circle #{inspect(circle)}? #{Simplemath.point_inside_circle?({:point, 1, 1}, circle)}"
)

IO.puts(
  "Point #{inspect(point)} inside rect #{inspect(rect)}? #{Simplemath.point_inside_rect?({:point, 1, 1}, rect)}"
)

IO.puts(
  "Sum of first and second item in list #{inspect(my_list)}: #{Simplemath.get_sum_of_first_and_second_item(my_list)}"
)

IO.puts(
  "Point #{inspect(point)} inside trapezoid #{inspect(trapezoid)}? #{Simplemath.point_inside_trapezoid?({:point, 1, 1}, trapezoid)}"
)

IO.puts(
  "Point #{inspect(point)} inside triangle #{inspect(triangle)}? #{Simplemath.point_inside_triangle?({:point, 1, 1}, triangle)}"
)

IO.puts(
  "Roots of equation x^2 - 5x + 6 = 0: #{inspect(Simplemath.solve_square_equation_by_discriminant(1, -5, 6))}"
)
