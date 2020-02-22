class Account < ApplicationRecord
    has_many :transactions

    validates :name, :balance, presense: true
end
