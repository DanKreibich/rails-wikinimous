class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
  end

  def create
    @article = Article.new(title: params[:article][:title], content: params[:article][:content])
    @article.save
    redirect_to articles_path
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(title: params[:article][:title], content: params[:article][:content])
    @article.save
    redirect_to details_path(@article.id)
  end

end
