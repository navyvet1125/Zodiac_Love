class User < ActiveRecord::Base
	has_secure_password
	belongs_to :sun_sign
	# has_many :sender, class_name: "Message", foreign_key: "sender_id"
	# has_many :receiver, class_name: "Message", foreign_key: "receiver_id"
	User.where("sender = ? OR receiver = ?", self, self)
end
