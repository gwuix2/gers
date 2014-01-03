class ParentPage < ActiveRecord::Base
	has_many :child_pages
end
