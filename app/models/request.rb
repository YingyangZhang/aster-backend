class Request < ApplicationRecord
    belongs_to :user

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :age, presence: true
    validates :gender, presence: true, inclusion: { in: ['Male', 'Female', 'Intersex', 'Trans', 'Others'] }
    validates :date_of_birth, presence: true
    validates :height, presence: true
    validates :weight, presence: true
    validates :about, presence: true, length: { minimum: 30 }
    validates :motivation, presence: true, length: { minimum: 30 }
end
