class PageComment < ActiveRecord::Base
  acts_as_content_block
  belongs_to :page

  validates_presence_of :page_id

  named_scope :for_page, lambda{|p| {:conditions => ["page_comments.page_id = ?", p.id]}}
  
end
