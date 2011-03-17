ActionController::Routing::Routes.draw do |map|
  map.resources :associates


  map.resources :pics
  map.resources :testimonials
  map.resources :categories
  map.resources :projects
  map.resources :admin_sessions
  map.resources :admins
  
  # Mail Route Paths
  map.contact_mailer 'contacts_mailer', :controller => "contact", :action => "contacts_mailer"
  
  # Login/Logout Controls
  map.admin_login "admin-login", :controller => "admin_sessions", :action => "new"
  map.admin_logout "admin-logout", :controller => "admin_sessions", :action => "destroy"
  
  # Named Paths
  map.services "bentar-services", :controller => "services", :action => "index"
  map.contact "contact-bentar-development", :controller => "contact", :action => "index"
  map.about "about-bentar-development", :controller => 'home', :action => 'about_us'
  map.privacy "bentar-development-privacy-statement", :controller => "home", :action => "privacy"
  map.clients "bentar-client-list", :controller => "home", :action => "clients_list"
  map.dashbaord "bentar-admin-dashboard", :controller => "admins", :action => "index"
  map.bars "bentar-projects-bars-and-restaurants", :controller => "home", :action => "bars"
  map.retail "bentar-projects-office-and-retail", :controller => "home", :action => "retail"
  map.casino "bentar-projects-casino-and-hospitality", :controller => "home", :action => "casino"
  map.c_store "bentar-projects-fuel-stations-and-c-stores", :controller => "home", :action => "c_store"

  
  
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end
  
  map.root :controller => "home", :action => "index"

end
