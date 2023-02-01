class User < ApplicationRecord
    has_secure_password

    has_one :request

    validates :username, presence: true, uniqueness: true
end
