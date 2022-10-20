class Card < ApplicationRecord
    validates :name, presence: true
    enum :status, [ :todo, :doing, :done ]
    belongs_to :group
end
