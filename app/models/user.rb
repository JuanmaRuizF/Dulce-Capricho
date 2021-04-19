class User < ApplicationRecord
  # attributes
	attr_accessor :password

	# check to see if a supplied user password matches the hashed version in the database
	def authenticate(password)
		if BCrypt::Password.new(self.password_digest) == password
			true
		else
			false
		end
	end

	# Create a bcrypt hashed version of a plain text password
	def hash_password
		if password.present?
			return self.password_digest = BCrypt::Password.create(password)
		end
	end
end
