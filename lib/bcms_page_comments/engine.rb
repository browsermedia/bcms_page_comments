require 'browsercms'
module BcmsPageComments
  class Engine < ::Rails::Engine
    isolate_namespace BcmsPageComments
		include Cms::Module
		
		initializer 'bcms_page_comments.route_extensions', :after => 'action_dispatch.prepare_dispatcher' do |app|
        ActionDispatch::Routing::Mapper.send :include, BcmsPageComments::RouteExtensions
     end
  end
end
