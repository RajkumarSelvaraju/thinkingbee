class General < ActiveRecord::Base

	belongs_to :general_info, polymorphic: true
end
