module MoviesHelper
  def sortable(column, text)
    next_direction = (column == @sort && @direction == "asc") ? "desc" : "asc"
    arrow = ""
    if column == @sort
      arrow = @direction == "asc" ? "↑" : "↓"
    end
    link_to "#{text} #{arrow}", movies_path(sort: column, dir: next_direction)
  end

  def sort_class(column)
    return nil unless column == @sort
    "sorted #{@direction}"
  end
end
