module MoviesHelper
    def sortable(column, title = nil)
      title ||= column.titleize
      direction = (column == session[:sort] && session[:direction] == 'asc') ? 'desc' : 'asc'
      link_to title, { sort: column, direction: direction }
    end
end
  