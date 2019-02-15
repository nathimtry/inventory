module ProductsHelper
	def image_for(product)
		if product.image_name.blank?
			image_tag('placeholder.png')
		else
			image_tag(product.image_name)
		end	
	end
end
