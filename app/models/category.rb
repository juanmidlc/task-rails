class Category < ApplicationRecord
    has_many :tasks
    has_and_belongs_to_many :profiles
end
