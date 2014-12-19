class Users < ActiveRecord::Base
	
	email_regex = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
	validates :firstName,	presence: true
	validates :lastName,	presence: true
	validates :emailAddr,		presence: true,
							:format => {:with => email_regex},
							:uniqueness => {:case_sensitive => false}
	validates :username,	presence: true
	validates :password,	presence: true

	before_save :encrypt_password

	def has_password?(submitted_password)
		encrypt_password = encrypt(submitted_password)
	end

	def self_authenticate(email, submitted_password)
		user = find_by_email(email)

		return nil if user.nil?
		return user if user.password_hash = BCrypt::Engine.hash_secret(submitted_password, user.password_salt)
	end

	private
		def encrypt_password
			self.password_salt = BCrypt::Engine.generate.password_salt
			self.password_hash = BCrypt::Engine.hash_secret(submitted_password, password_salt)
		end

end