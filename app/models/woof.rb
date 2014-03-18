class Woof < ActiveRecord::Base
	belongs_to :user
	default_scope order: 'created_at DESC'
	validates :content, length: { maximum: 140 }

end
