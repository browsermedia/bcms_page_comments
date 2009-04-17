SPEC = Gem::Specification.new do |spec| 
  spec.name = "browser_cms_page_comments_module"
  spec.rubyforge_project = spec.name
  spec.version = "3.0.0" 
  spec.summary = "The Page Comments Module for BrowserCMS" 
  spec.author = "BrowserMedia" 
  spec.email = "github@browsermedia.com" 
  spec.homepage = "http://www.browsercms.org" 
  spec.files += Dir["app/**/*"]  
  #spec.files += Dir["db/migrate/[0-9]*_create_page_comments.rb"]
  spec.files += Dir["lib/browser_cms_page_comments_module.rb"]
  spec.files += Dir["lib/browser_cms_page_comments_module/*"]  
  spec.files += Dir["rails/init.rb"]
  spec.has_rdoc = true
  spec.extra_rdoc_files = ["README"]
  #spec.require_path "lib"
end
