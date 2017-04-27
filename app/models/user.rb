class User < ApplicationRecord
  has_many :meals, dependent: :destroy
  has_secure_password
end
