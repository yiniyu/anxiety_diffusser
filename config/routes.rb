Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "perspectives#index"
  # Routes for the Diffuser resource:

  # CREATE
  get("/diffusers/new", { :controller => "diffusers", :action => "new_form" })
  post("/create_diffuser", { :controller => "diffusers", :action => "create_row" })

  # READ
  get("/diffusers", { :controller => "diffusers", :action => "index" })
  get("/diffusers/:id_to_display", { :controller => "diffusers", :action => "show" })

  # UPDATE
  get("/diffusers/:prefill_with_id/edit", { :controller => "diffusers", :action => "edit_form" })
  post("/update_diffuser/:id_to_modify", { :controller => "diffusers", :action => "update_row" })

  # DELETE
  get("/delete_diffuser/:id_to_remove", { :controller => "diffusers", :action => "destroy_row" })

  #------------------------------

  # Routes for the Emotion resource:

  # CREATE
  get("/emotions/new", { :controller => "emotions", :action => "new_form" })
  post("/create_emotion", { :controller => "emotions", :action => "create_row" })

  # READ
  get("/emotions", { :controller => "emotions", :action => "index" })
  get("/emotions/:id_to_display", { :controller => "emotions", :action => "show" })

  # UPDATE
  get("/emotions/:prefill_with_id/edit", { :controller => "emotions", :action => "edit_form" })
  post("/update_emotion/:id_to_modify", { :controller => "emotions", :action => "update_row" })

  # DELETE
  get("/delete_emotion/:id_to_remove", { :controller => "emotions", :action => "destroy_row" })

  #------------------------------

  # Routes for the Solution resource:

  # CREATE
  get("/solutions/new", { :controller => "solutions", :action => "new_form" })
  post("/create_solution", { :controller => "solutions", :action => "create_row" })

  # READ
  get("/solutions", { :controller => "solutions", :action => "index" })
  get("/solutions/:id_to_display", { :controller => "solutions", :action => "show" })

  # UPDATE
  get("/solutions/:prefill_with_id/edit", { :controller => "solutions", :action => "edit_form" })
  post("/update_solution/:id_to_modify", { :controller => "solutions", :action => "update_row" })

  # DELETE
  get("/delete_solution/:id_to_remove", { :controller => "solutions", :action => "destroy_row" })

  #------------------------------

  # Routes for the Perspective resource:

  # CREATE
  get("/perspectives/new", { :controller => "perspectives", :action => "new_form" })
  post("/create_perspective", { :controller => "perspectives", :action => "create_row" })

  # READ
  get("/perspectives", { :controller => "perspectives", :action => "index" })
  get("/perspectives/:id_to_display", { :controller => "perspectives", :action => "show" })

  # UPDATE
  get("/perspectives/:prefill_with_id/edit", { :controller => "perspectives", :action => "edit_form" })
  post("/update_perspective/:id_to_modify", { :controller => "perspectives", :action => "update_row" })

  # DELETE
  get("/delete_perspective/:id_to_remove", { :controller => "perspectives", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
