class User < ApplicationRecord
	has_many :votes
	has_many :lecturer, through: :votes
end
