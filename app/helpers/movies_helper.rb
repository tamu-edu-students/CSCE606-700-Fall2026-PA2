module MoviesHelper
  def sortable(column, text)
    next_direction = (column == @sort && @direction == "asc") ? "desc" : "asc"
    link_to "#{text}", movies_path(sort: column, dir: next_direction)
  end
end
