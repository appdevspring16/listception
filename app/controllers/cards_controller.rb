class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id_number])

    render("show.html.erb")
  end

  def new_form
  end

  def create_row
    # params = {"the_title"=>"1", "the_description"=>"2"}

    c = Card.new

    c.title = params[:the_title]
    c.description = params[:the_description]

    c.save

    redirect_to("http://localhost:3000/cards")
  end

  def edit_form
    @card = Card.find(params[:id_number])
  end

  def update_row
    # params = {"the_title"=>"Remember the milk", "the_description"=>"For once"}

    c = Card.find(params[:id_number])
    c.title = params[:the_title]
    c.description = params[:the_description]
    c.save
    redirect_to("http://localhost:3000/cards/" + c.id.to_s)
  end
end
