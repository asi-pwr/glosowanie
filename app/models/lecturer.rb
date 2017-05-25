class Lecturer < ApplicationRecord
	has_many :users, through: :votes #wykladowcy maja wiele uzytkownikow poprzez glosy
	has_many :votes
end
