require 'api_version_contraint'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Se crea namespace el cual enviara la version que se le ordene por la URL
  namespace :api, defaults:{ format:  :json }, constraints: { subdomain: 'api' }, path: "/"  do
  	namespace :v1, path:"/", constraints: ApiVersionConstraint.new(version: 1, default: true)  do
  		
  	end	

  

   end
end



