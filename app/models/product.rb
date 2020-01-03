class Product < ApplicationRecord
	belongs_to :category
	update_index('products#product') { self }
end
