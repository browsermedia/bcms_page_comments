Rails.application.routes.draw do

  mount BcmsPageComments::Engine => "/bcms_page_comments"
	mount_browsercms
end
