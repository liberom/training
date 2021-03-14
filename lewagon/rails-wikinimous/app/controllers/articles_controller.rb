class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    @article.save
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(params[:article])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to article_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
