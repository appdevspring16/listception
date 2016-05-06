Rails.application.routes.draw do

  # Routes for CREATE
  get("/cards/new", { :controller => "cards", :action => "new_form" })
  get("/create_card", { :controller => "cards", :action => "create_row" })

  # Routes for READ
  get("/cards", { :controller => "cards", :action => "index" })
  get("/cards/:id_number", { :controller => "cards", :action => "show" })

  # Routes for UPDATE
  get("/cards/:id_number/edit", { :controller => "cards", :action => "edit_form" })
  get("/update_card/:id_number", { :controller => "cards", :action => "update_row" })

end
