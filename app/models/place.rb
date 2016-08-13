class Place < ApplicationRecord
	validates :name, presence:true, length: {minimum:2}
	validates :address, presence:true, length: { minimum:8 }
	validates :established_at, presence:true
	validates :phone_number, presence:true
	validates :contact_mail, presence:true
	validates :city, presence:true
	
	def category
		Category.find(category_id)
  	end

end
