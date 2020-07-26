class User < ApplicationRecord
    has_secure_password
    has_many :habits
    has_many :logs, through: :habits

    validates :email, uniqueness: true, presence: true
    validates :username, uniqueness: true, presence: true
end
