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

#UPDATE
get("/directors/:id/edit_form", {:controller => "directors", :action => "edit_form"})

get("/update_director/:id", {:controller => "directors", :action => "update_row"})

#DELETE
get("/delete_director/:id", {:controller => "directors", :action => "delete"})

# Actor routes
#CREATE
get("/actors_new", {:controller => "actors", :action => "new_form"})

get("/create_actor", {:controller => "actors", :action => "create_row"})

#READ
# actors index
get("/actors", {:controller => "actors", :action => "index"})

#actors show
get("/actors/:id", {:controller => "actors", :action => "show"})

#UPDATE
get("/actors/:id/edit_form", {:controller => "actors", :action => "edit_form"})

get("/update_actor/:id", {:controller => "actors", :action => "update_row"})

#DELETE
get("/delete_actor/:id", {:controller => "actors", :action => "delete"})

# Movie routes
#CREATE
get("/movies_new", {:controller => "movies", :action => "new_form"})

get("/create_movie", {:controller => "movies", :action => "create_row"})

#READ
# movies index
get("/movies", {:controller => "movies", :action => "index"})

#movies show
get("/movies/:id", {:controller => "movies", :action => "show"})

#UPDATE
get("/movies/:id/edit_form", {:controller => "movies", :action => "edit_form"})

get("/update_movie/:id", {:controller => "movies", :action => "update_row"})

#DELETE
get("/delete_movie/:id", {:controller => "movies", :action => "delete"})



end
