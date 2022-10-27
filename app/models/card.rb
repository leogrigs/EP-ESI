class Card < ApplicationRecord
    validates :name, presence: true
    enum :status, [ :todo, :doing, :done ]
    belongs_to :group

    def nextStatus
        case self.status
            when 'todo'   
                self.status = :doing 
            when 'doing'
                self.status = :done 
            else
                self.status = :todo 
        end
    end

    def previousStatus
        case self.status
            when 'todo'   
                self.status = :done 
            when 'doing'
                self.status = :todo 
            else
                self.status = :doing 
        end
    end
    
end
