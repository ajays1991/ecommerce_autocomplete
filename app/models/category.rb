class Category < ApplicationRecord
	has_many :products, counter_cache: true
	update_index('products#product') { products }
end
