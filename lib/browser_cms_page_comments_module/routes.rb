module Cms::Routes
  def routes_for_browser_cms_page_comments_module
    namespace(:cms) do |cms|
      #cms.content_blocks :page_comments
    end  
  end
end
