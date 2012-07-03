module BcmsPageComments::RouteExtensions
  def mount_bcms_page_comments
    mount BcmsPageComments::Engine => "/bcms_page_comments"
    post '/page_comments' => 'page_comments#create', :as=>'page_comments'
  end
  
  alias :routes_for_bcms_page_comments :mount_bcms_page_comments
end