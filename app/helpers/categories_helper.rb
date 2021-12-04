module CategoriesHelper
	def category_list
		Category.all.map {|category|  [category.name, category.id]}
	end
end
