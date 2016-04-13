class User < ActiveRecord::Base
	has_secure_password
	belongs_to :sun_sign
	# has_many :sender, class_name: "Message", foreign_key: "sender_id"
	# has_many :receiver, class_name: "Message", foreign_key: "receiver_id"
	User.where("sender = ? OR receiver = ?", self, self)
	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
