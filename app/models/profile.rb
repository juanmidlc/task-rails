class Profile < ApplicationRecord
    enum occupation: [:student, :student_employee, :employee]
    has_and_belongs_to_many :categories
    belongs_to :user
end
