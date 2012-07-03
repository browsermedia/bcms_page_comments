module BcmsPageComments
  class PageComment < ActiveRecord::Base
    acts_as_content_block
    belongs_to :page, :class_name=>"Cms::Page"

    validates_presence_of :page_id
    attr_accessible :page
    
    scope :for_page, lambda{|p| {:conditions => ["#{table_name}.page_id = ?", p.id]}}

  end
end
