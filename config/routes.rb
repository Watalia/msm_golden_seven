Rails.application.routes.draw do

  get('/', {:controller => 'movies', :action => 'index'})
  # Routes for the Director resource:
  # Read
  get('/directors', { :controller => 'directors', :action => 'index' })
  get('/directors/:id', { :controller => 'directors', :action => 'show' })
  # Delete
  get('/delete_director/:id', {:controller=> 'directors', :action => 'destroy'})
  # We now create a new director
  get('/directors/new_form', {:controller => 'directors', :action => 'new_form'})
  get('/create_director', {:controller => 'directors', :action => 'create_row'})
  # Update
  get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
  get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

end
