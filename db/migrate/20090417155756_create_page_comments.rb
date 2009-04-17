class CreatePageComments < ActiveRecord::Migration
  def self.up
    create_versioned_table :page_comments do |t|
      t.belongs_to :page 
      t.string :name 
      t.string :email 
      t.string :url 
      t.text :body 
      t.string :ip 
    end
    
    
    ContentType.create!(:name => "PageComment", :group_name => "Comments")
  end

  def self.down
    ContentType.delete_all(['name = ?', 'PageComment'])
    drop_table :page_comment_versions
    drop_table :page_comments
  end
end
