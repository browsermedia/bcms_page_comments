class MostCommentedOnPortlet < Cms::Portlet
    
  def render
    @pages = most_popular_pages(@portlet.number_to_show)
  end

  def most_popular_pages (limit)
    Cms::Page.find(:all,
              :select => "#{Cms::Page.table_name}.*, COUNT(#{BcmsPageComments::PageComment.table_name}.id) AS comments_count",
              :joins  => "INNER JOIN #{BcmsPageComments::PageComment.table_name} ON #{BcmsPageComments::PageComment.table_name}.page_id = #{Cms::Page.table_name}.id",
              :group  => "#{Cms::Page.table_name}.id",
              :limit => limit,
              :order => "comments_count desc")


  end

end