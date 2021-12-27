class MoviesController< ApplicationController
   def index
    @movies=Movie.all
   
end
   
   def new
      if user_signed_in?
         @movie=Movie.new
      else
         redirect_to  new_user_session_path
      end
   end 

   def show
      if user_signed_in?
      @movie=Movie.find(params[:id])
      else
         redirect_to  new_user_session_path
      end
   end
   
   def create
      @movie=Movie.new(movie_params)         
      if @movie.save
   
         actor = Actor.find params[:movie][:actor_id]
         @movie.actors << actor
         
         gener=Gener.find params[:movie][:gener_id]
         @movie.geners << gener
         director=Director.find params[:movie][:director_id]
         @movie.directors << director
         
         redirect_to @movie ,notice: 'Movie Was Succesfully Created';
         
      else
         render :new , status: :unprocessable_entity
      end
   end
   
   def edit
      
      @movie=Movie.find(params[:id])
      
   end

   def update
      @movie = Movie.find(params[:id])
   
      if @movie.update(movie_params)
         actor = Actor.find params[:movie][:actor_id]
         @movie.actors << actor unless @movie.actor_ids.include?(actor.id)
         
         gener=Gener.find params[:movie][:gener_id]
         @movie.geners << gener unless @movie.gener_ids.include?(gener.id)
         director=Director.find params[:movie][:director_id]
         @movie.directors << director unless @movie.director_ids.include?(director.id)
         
        redirect_to @movie ,notice: 'Movie Was Succesfully Updated';
      else
        render :new, status: :unprocessable_entity
    end
    end
    
    def destroy
      @movie=Movie.find(params[:id])
      @movie.destroy
      
      redirect_to root_path
    end
    
    private
      def movie_params
        params.require(:movie).permit(:title, :release_date, :budget, :attachment ) 
    end
      def actor_params
         params.require(:actor).permit(:actor_f_name,:actor_l_name,:actor_gender)
      end
    def gener_params
      params.require(:gener).permit(:gener_title)
    end

    def director_params
      params.require(:director).permit(:dir_f_name,:dir_l_name)
    end
end