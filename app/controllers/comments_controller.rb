class CommentsController < ApplicationController
  before_action :set_comment, only: [:create]

  def create
    @comment = @article.comments.build(comment_params)
    @comment.save
    redirect_to(article_path(@comment.article))
  end


  private
  def set_comment
    @article = Article.find(params[:article_id])
  end

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end

end
