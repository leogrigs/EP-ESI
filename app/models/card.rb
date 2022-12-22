class Card < ApplicationRecord
    validates :name, presence: true
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

    def add_user_to_card
        case self.cadastro_usuario_id 
            when nil
                self.cadastro_usuario_id = 1
            when 1
                self.cadastro_usuario_id = nil
        end
    end
    
end
