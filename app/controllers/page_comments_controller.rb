class PageCommentsController < Cms::ApplicationController

  before_filter :verify_user_is_logged_in

  def create
    @page_comment = PageComment.new(params[:page_comment])
    @page_comment.ip = request.remote_ip
    if @page_comment.save
      flash[:notice] = "Comment was created"
    end
    redirect_to @page_comment.page.path
  end

  private
  
  def verify_user_is_logged_in
    raise Cms::Errors::AccessDenied if current_user.guest?
  end
end