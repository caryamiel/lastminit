class Pretask < ActiveRecord::Base
	belongs_to :project
	belongs_to :user
	
	has_many :pretaskdependtos, :through =>:predepends
	
	has_many :pretaskmemberships, dependent: :destroy
	has_many :pretmembers, :through => :pretaskmemberships


	has_many :predepends, dependent: :destroy
	has_many :passive_predepends, :class_name => "Predepend", :foreign_key =>"pretaskdependto_id"
	has_many :active_predependtos, :through =>:predepends,:source => :pretaskdependto
	has_many :passive_predependtos, :through => :passive_predepends, :source => :pretask
end
