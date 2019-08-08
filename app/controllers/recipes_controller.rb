class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render :index
  end

  def new
    render :new
  end

  def create
    title = params[:title]
    recipe = Recipe.create!(:title => title)

    if recipe.save
        # this basically is an extension of the flash where the flash now contains a hash, so the extra string gets into the hash and pulls out values we need. This is so we can add a class to that div in the layout!
      flash[:notice] = {:class => "alert alert-success", :body => "Added Recipe: #{recipe.title}"}

      redirect_to '/recipes'
    else
      flash[:alert] = recipe.errors.full_messages.first
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    render :show
  end

end
