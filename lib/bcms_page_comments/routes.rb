module Cms::Routes
  def routes_for_bcms_page_comments
    
    page_comments "/page_comments", 
      :controller => "page_comments", 
      :action => "create",
      :conditions => {:method => :post}
    
    namespace(:cms) do |cms|
      cms.content_blocks :page_comments
    end  
  end
end
