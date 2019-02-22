class Post < ApplicationRecord
    has_many :pictures
    belongs_to :user
    belongs_to :location
end
