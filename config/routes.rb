Rails.application.routes.draw do

# Directors routes

#CREATE
get("/directors_new", {:controller => "directors", :action => "new_form"})

get("/create_director", {:controller => "directors", :action => "create_row"})

#READ
# directors index
get("/directors", {:controller => "directors", :action => "index"})

#directors show
get("/directors/:id", {:controller => "directors", :action => "show"})

#DELETE
get("/delete_director/:id", {:controller => "directors", :action => "delete"})



end
