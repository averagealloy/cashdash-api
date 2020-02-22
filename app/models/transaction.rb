class Transaction < ApplicationRecord
    belongs_to :account

    validates :ammout, presence: true

end
