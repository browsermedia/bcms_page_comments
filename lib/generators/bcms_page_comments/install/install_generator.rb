require 'cms/module_installation'

class BcmsPageComments::InstallGenerator < Cms::ModuleInstallation
  add_migrations_directory_to_source_root __FILE__
  
  
  def copy_migrations
    rake 'bcms_page_comments:install:migrations'
  end

  # Uncomment to add module specific seed data to a project.
  def add_seed_data_to_project
     copy_file "../bcms_page_comments.seeds.rb", "db/bcms_page_comments.seeds.rb"
     append_to_file "db/seeds.rb", "\nload File.expand_path('../bcms_page_comments.seeds.rb', __FILE__)\n"
  end
  
  def add_routes
    mount_engine(BcmsPageComments)
  end
    
end