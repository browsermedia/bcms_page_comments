# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bcms_page_comments/version"

Gem::Specification.new do |spec| 
  spec.name = "bcms_page_comments"
  spec.rubyforge_project = spec.name
  spec.version = BcmsPageComments::VERSION 
  spec.summary = "The Page Comments Module for BrowserCMS" 
  spec.author = "BrowserMedia" 
  spec.email = "github@browsermedia.com" 
  spec.homepage = "http://www.github.com/browsermedia/bcms_page_comments" 
 
  spec.has_rdoc = true
  spec.extra_rdoc_files = ["README.markdown"]
  
  spec.files = Dir["{app,config,db,lib}/**/*"]
  spec.files += Dir["Gemfile", "LICENSE.txt", "COPYRIGHT.txt", "GPL.txt" ]

  spec.add_dependency("browsercms", "< 3.6.0", ">= 3.5.0")
end
