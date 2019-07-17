class Task < ApplicationRecord
    enum priority: [:low, :medium, :high]
    belongs_to :category
end
