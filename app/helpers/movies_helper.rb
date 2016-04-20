module MoviesHelper
    
    def estrella_pelicula
      mala = Comment.where(movie_id: @movie).rewhere(likes: 0)
      m = mala.count.to_i 
      regular = Comment.where(movie_id: @movie).rewhere(likes: 1) 
      r =regular.count.to_i * 2 
      buena = Comment.where(movie_id: @movie).rewhere(likes: 2) 
      b = buena.count.to_i * 3 
      buenisima = Comment.where(movie_id: @movie).rewhere(likes: 3) 
      bb = buenisima.count.to_i * 4 
      excelente = Comment.where(movie_id: @movie).rewhere(likes: 4) 
      e = excelente.count.to_i * 5 
      m+r+b+bb+e 
        
    end
    
end
