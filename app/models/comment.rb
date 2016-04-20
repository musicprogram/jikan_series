class Comment < ActiveRecord::Base
  belongs_to :movie
 
  enum likes: {mala: 0, regular: 1, buena: 2, buenisima: 3 , excelente: 4}
end
