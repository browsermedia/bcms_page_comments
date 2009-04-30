class MostCommentedOnPortlet < Portlet
    
  def render
    @pages = most_popular_pages(@portlet.number_to_show)
  end

  def most_popular_pages (limit)
    Page.find(:all,
              :select => 'pages.*, COUNT(page_comments.id) AS comments_count',
              :joins  => 'INNER JOIN page_comments ON page_comments.page_id = pages.id',
              :group  => 'pages.id',
              :limit => limit,
              :order => "comments_count desc")


  end

end