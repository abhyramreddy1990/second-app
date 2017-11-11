class Sampleapp < ApplicationRecord
	def self.search(search)
  		if search
    		where('Fname LIKE ?', "%#{search}%")
  		else
   		 scoped
  		end
	end

end
