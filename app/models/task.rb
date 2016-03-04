class Task < ActiveRecord::Base
	has_many :subtasks, dependent: :destroy
	has_many :comments, dependent: :destroy
	belongs_to :project
	belongs_to :user


	has_many :taskmemberships, dependent: :destroy
	has_many :tmembers, :through => :taskmemberships

	has_many :taskdepends, dependent: :destroy
	has_many :taskdependtos, :through =>:taskdepends
end
