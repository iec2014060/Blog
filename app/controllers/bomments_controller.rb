class BommentsController < ApplicationController
  http_basic_authenticate_with name: "Anand Verma",password: "abc123",except:[:create]
  def create
    @article=Article.find(params[:article_id])
    @bomment=@article.bomments.create(params[:bomment])
    redirect_to articles_path(@article)
  end

  def destroy
    @article=Article.find(params[:article_id])
    @comment=@article.bomments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end
end
