module CardsHelper

    def format_status(status)
        case status
            when 'todo'   
                status = 'To Do' 
            when 'doing'
                status = 'Doing' 
            else
                status = 'Done' 
        end
        status
    end


end
