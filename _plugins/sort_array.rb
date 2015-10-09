module Jekyll
  module SortArrayFilter
    def sort_array(array) 
    	array.delete_if {|x| x.nil? }.sort
    end
  end
end

Liquid::Template.register_filter(Jekyll::SortArrayFilter)