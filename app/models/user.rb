class User < ActiveRecord::Base
  has_secure_password
  validates :email ,format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i,
  message: "Email invalid format"}
end
