class User < ApplicationRecord
  has_many :votes
  has_many :lecturer, through: :votes
  has_secure_token :token
end
