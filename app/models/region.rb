class Region < ActiveRecord::Base
	has_many :states

	def name
        self.description
    end
end
