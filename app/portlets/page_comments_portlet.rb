class PageCommentsPortlet < Cms::Portlet
  enable_template_editor true
    
  def render
    @page = @controller.instance_variable_get("@page")
    if @page
      # The list of comments to show
      @page_comments = BcmsPageComments::PageComment.for_page(@page).all(:order => "created_at desc")
    
      # For the form to create a new comment
      @page_comment = BcmsPageComments::PageComment.new(:page => @page)
    end
  end
    
end