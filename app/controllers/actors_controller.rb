class ActorsController< ApplicationController

  def index
    @actors=Actor.all
  end
  
  def new
    @actor=Actor.new

  end
  
  def show 
    @actor=Actor.find(params[:id])
    #@movie=Movie.find(params[:id])
    #@actor=@movie.actors
        
  end
  
  def create
    @actor=Actor.new(actor_params)
    respond_to do |format|
    if @actor.save
      format.html{redirect_to actor_path(@actor),notice:'Actor was Successfully Created.'}
      format.js
      format.json{render json:@actor,status: :created,location: @actor}
      else
        format.html{render action: "new"}
        format.json{render json: @actor.errors,status: :unprocessable_entity }
      #render :new, status: :unprocessable_entity,notice:'Actor Created Successfully' 
    end
  end
end

def edit
  @actor=Actor.find(params[:id])

end

def update
  @actor = Actor.find(params[:id])

  if @actor.update(actor_params)
    redirect_to @actor, notice: 'Actor Updated Successfully'
  else
    render :new, status: :unprocessable_entity
end
end

def destroy
  @actor=Actor.find(params[:id])
  @actor.destroy
  
  respond_to do |format|
  
    format.html{redirect_to root_path,notice: 'Actor was Deleted destroyed'}
    format.json{head :no_content}
    format.js {render :layout=>false}
  end
    #redirect_to root_path
end

private
  def actor_params
    params.require(:actor).permit(:actor_f_name, :actor_l_name, :actor_gender)
end

end