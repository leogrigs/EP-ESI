class Group < ApplicationRecord
    has_many :cards
    validates :description, presence: true
    validates :card_qtd, presence: true
end
