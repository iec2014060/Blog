class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "Anand Verma",password: "abc123",except:[:index,:show]
  def index
    @articles=Article.all
  end


  def new
    @article=Article.new

  end
  def create
    #render plain: params[:article].inspect
    @article=Article.new(params[:article])
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
  def search
    if params[:search].blank?
      @article=Article.all
    else
      @article=Article.search(params)
    end
  end

  def edit
    @article=Article.find(params[:id])
  end
  def update
    @article=Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to @article
    else
      render 'edit'
    end
  end
  def show
    @article=Article.find(params[:id])
  end
  def destroy
    @article=Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end
#  private
#  def article_params
#    params.require(:article).permit(:title,:text)
#  end
end
