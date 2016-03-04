class Predepend < ActiveRecord::Base
	belongs_to :pretask 
	belongs_to :pretaskdependto, :class_name => "Pretask"
end
