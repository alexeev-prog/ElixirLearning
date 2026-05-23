defmodule Simplemath do
  def square(a) do
    a * a
  end

  def pow(a, b) do
    a ** b
  end

  def discriminant(a, b, c) do
    b * b - 4 * a * c
  end

  def area_of_circle(radius) do
    :math.pi() * radius * radius
  end

  def area_of_rectangle(width, height) do
    width * height
  end

  def area_of_triangle(x1, y1, x2, y2, x3, y3) do
    0.5 * abs(x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2))
  end

  def area_of_trapezoid(base1, base2, height) do
    0.5 * (base1 + base2) * height
  end

  def solve_square_equation_by_discriminant(a, b, c) do
    d = discriminant(a, b, c)

    cond do
      d > 0 ->
        root1 = (-b + :math.sqrt(d)) / (2 * a)
        root2 = (-b - :math.sqrt(d)) / (2 * a)
        {root1, root2}

      d == 0 ->
        root = -b / (2 * a)
        {root}

      d < 0 ->
        :no_real_roots
    end
  end

  def distance({:point, x1, y1}, {:point, x2, y2}) do
    x_dist = abs(x1 - x2)
    y_dist = abs(y1 - y2)
    :math.sqrt(:math.pow(x_dist, 2) + :math.pow(y_dist, 2))
  end

  def point_inside_circle?({:point, x, y}, {:circle, {:point, x2, y2}, radius}) do
    distance({:point, x, y}, {:point, x2, y2}) <= radius
  end

  def point_inside_rect?({:point, x, y}, {:rect, {:point, x1, y1}, {:point, x2, y2}}) do
    min_x = min(x1, x2)
    max_x = max(x1, x2)
    min_y = min(y1, y2)
    max_y = max(y1, y2)
    min_x < x and x < max_x and min_y < y and y < max_y
  end

  def point_inside_triangle?(
        {:point, x, y},
        {:triangle, {:point, x1, y1}, {:point, x2, y2}, {:point, x3, y3}}
      ) do
    area_abc = area_of_triangle(x1, y1, x2, y2, x3, y3)
    area_abp = area_of_triangle(x1, y1, x2, y2, x, y)
    area_acp = area_of_triangle(x1, y1, x3, y3, x, y)
    area_bcp = area_of_triangle(x2, y2, x3, y3, x, y)
    area_abc == area_abp + area_acp + area_bcp
  end

  def point_inside_trapezoid?(
        {:point, x, y},
        {:trapezoid, {:point, x1, y1}, {:point, x2, y2}, height}
      ) do
    base1 = abs(x1 - x2)
    base2 = base1 + height
    area = area_of_trapezoid(base1, base2, height)
    area_abp = area_of_triangle(x1, y1, x2, y2, x, y)
    area_acp = area_of_triangle(x1, y1, x + height, y + height, x, y)
    area_bcp = area_of_triangle(x2, y2, x + height, y + height, x, y)
    area == area_abp + area_acp + area_bcp
  end

  def get_sum_of_first_and_second_item(list) do
    [first, second | _other] = list
    first + second
  end
end
