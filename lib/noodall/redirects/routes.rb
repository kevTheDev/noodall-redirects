module Noodall
  module Redirects
    class Routes
      class << self
        def draw(app)
          app.routes.draw do
  
            namespace 'noodall/admin', :as => 'noodall_admin', :path => 'admin' do
              resources :redirects
            end
            
          end
          
        end
        # def draw
      end
      # << self
    end
    # Routes
  end
  # Redirects
end
 # Noodall