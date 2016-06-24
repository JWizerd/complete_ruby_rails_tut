class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :show, :destroy]

  def index 
    @articles = Article.all
  end

  def new 
    @article = Article.new #creates new article from articles/new view
  end

  def edit #find the id of a created article

  end

  def update #notes from here are valid for create method as well.
    if @article.update(article_params) # if article params (line 40) are true run code
      flash[:notice] = "Article was successfully edited" #this is a rails method that shows an notification if errors are present in submission
      redirect_to article_path(@article) # after 
    else 
      render :edit # if article params (line 40) is not true reload edit page (errors will occur from edit.html.erb)
    end
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was successfully created"
      redirect_to article_path(@article)
    else 
      render :new
    end
  end

  def show 

  end

  def destroy

    flash[:notice] = "Article successfully removed"
    @article.destroy
    redirect_to articles_path
  end

  private

    def article_params
      params.require(:article).permit(:title, :description)
    end

    def set_article
      @article = Article.find(params[:id])
    end


end