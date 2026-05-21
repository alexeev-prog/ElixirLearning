defmodule Simplemath do
  def square(a) do
    a * a
  end

  def pow(a, b) do
    a ** b
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

  def get_sum_of_first_and_second_item(list) do
    [first, second | _other] = list
    first + second
  end
end
