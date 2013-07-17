class CardsController < ApplicationController
  def index
  	@c2 = "Add Card"
  	@card = Card.new 
  	@cards = Card.all
    @variable = 2 +  2 + 2
    @card.card
    @cv = @card.veriff  + 8
    @vc = Card.forfind
    @vv = 3
  end

def create
  	Card.create params[:card]  
  	redirect_to :back  
  end

def edit
  	@card = Card.find params[:id]
  end
 
def update
		card = Card.find params[:id]
  	 if card.update_attributes params[:card]
      redirect_to cards_path, :notice => 'Card was updated'
     else
	    redirect_to :back, :notice => 'update error'
     end
  end

def destroy
  Card.destroy params[:id]
  redirect_to :back, :notice => 'Destruction complete'
  end


end
