module MoviesHelper
	def sorted_header_class(column_name)
		column_name == @sort_column ? "sorted" : nil
	end
end
