class Pretaskmembership < ActiveRecord::Base
	belongs_to :user
	belongs_to :pretask, :class_name => "Pretask"
	belongs_to :pretmember, :class_name => "User"
end
