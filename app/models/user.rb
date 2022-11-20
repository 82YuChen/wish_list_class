class User < ApplicationRecord
    validates :email, presence: true
    validates :password, confirmation: true, length: { minimum: 6 }

    has_many :wish_lists

    before_create :encrypt_password

    def self.login(email, password)
      hashed_password = Digest::SHA1.hexdigest("zxs#{password}zwx")
      find_by(email: email, password: hashed_password)
    end

    private
    def encrypt_password
      self.password = Digest::SHA1.hexdigest("zxs#{self.password}zwx")
    end
end
