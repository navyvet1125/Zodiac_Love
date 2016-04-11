class SunSign < ActiveRecord::Base
	belongs_to :previous, class_name: "SunSign", foreign_key: "previous_id"
	has_one :previous, class_name: "SunSign", foreign_key: "previous_id"
	belongs_to :next, class_name: "SunSign", foreign_key: "next_id"
	has_one :next, class_name: "SunSign", foreign_key: "next_id"
	has_many :users
end
