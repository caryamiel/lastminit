class Taskdepend < ActiveRecord::Base
	belongs_to :task 
	belongs_to :taskdependto, :class_name => "Task"
end
