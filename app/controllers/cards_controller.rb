class CardsController < ApplicationController
  before_action :set_card, only: %i[ show edit update destroy changeNextStatus changePreviousStatus ]

  # GET /cards or /cards.json
  def index
      if params[:status]
      @cards = filter(params[:status])
      elsif params[:group_id]
        @cards = group_filter(params[:group_id])
      else
        @cards = Card.all
      end
      # these are the groups buttons that appear on the left
      @groups = Group.all
    
  end

  # GET /cards/1 or /cards/1.json
  def show
  end

  # GET /cards/new
  def new
    @card = Card.new
  end

  # GET /cards/1/edit
  def edit
  end

  # POST /cards or /cards.json
  def create
    
    @card = Card.new(card_params)
    respond_to do |format|
      if @card.save
        format.html { redirect_to card_url(@card), notice: "Card was successfully created." }
        format.json { render :show, status: :created, location: @card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cards/1 or /cards/1.json
  def update
    
    respond_to do |format|
      if @card.update(card_params)
        format.html { redirect_to card_url(@card), notice: "Card was successfully updated." }
        format.json { render :show, status: :ok, location: @card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cards/1 or /cards/1.json
  def destroy
    @card.destroy

    respond_to do |format|
      format.html { redirect_to cards_url, notice: "Card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def changeNextStatus()
    @card.nextStatus
    @card.save
    redirect_to '/cards'
  end

  def changePreviousStatus()
    @card.previousStatus
    @card.save
    redirect_to '/cards'     
  end
  def add_user_to_card()
        @card = Card.find(params[:id])
        @card.update(cadastro_usuario_id: session[:user_id]) 
        @card.save
        redirect_to '/cards'
      end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = Card.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def card_params
      params.require(:card).permit(:name, :description, :status, :group_id)
    end

    

    def filter(status)
      case status
        when 'todo'   
          return Card.where(status: 'todo')
        when 'doing'
          return Card.where(status: 'doing') 
        else
          return Card.where(status: 'done')
        end
    end

    def group_filter(group_id)
      return Card.where(group_id: group_id)
    end
  end