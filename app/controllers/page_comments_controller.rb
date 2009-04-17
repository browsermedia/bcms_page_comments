class PageCommentsController < ApplicationController
  def create
    @page_comment = PageComment.new(params[:page_comment])
    @page_comment.ip = request.remote_ip
    if @page_comment.save
      flash[:notice] = "Comment was created"
    end
    redirect_to @page_comment.page.path
  end
end