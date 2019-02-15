class Product < ApplicationRecord
	validates :name ,presence: true
	validates :price ,numericality: {greater_than_to: 0 }
	validates :image_name, allow_blank: true, format: {
  		with:    /\w+\.(gif|jpg|png)\z/i,
  		message: "must reference a GIF, JPG, or PNG image"
}
end
