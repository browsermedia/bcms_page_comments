require 'cms/upgrades/v3_5_0'

class UpdateTo200 < ActiveRecord::Migration
  def change
      v3_5_0_apply_namespace_to_block("BcmsPageComments", "PageComment")
  end
end


