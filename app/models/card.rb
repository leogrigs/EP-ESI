class Card < ApplicationRecord
    enum status: [:todo, :doing, :done]
end
