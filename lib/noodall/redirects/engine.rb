module Noodall
  module Redirects
    class Engine < Rails::Engine
      initializer "set menu" do |app|
        Noodall::UI.menu_items['Redirects'] = :noodall_admin_redirects_path
      end

      rake_tasks do
        Dir[File.join(File.dirname(__FILE__),'tasks/*.rake')].each { |f| load f }
      end
    end
  end
end
