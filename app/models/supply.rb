class Supply < ActiveRecord::Base
  belongs_to :region
  belongs_to :state
  belongs_to :zone
end
