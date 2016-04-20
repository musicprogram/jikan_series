class Movie < ActiveRecord::Base
  has_many  :comments, dependent: :destroy
  belongs_to :category
    has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
    
  before_validation :youtube
   
  def youtube   #este sirve para cambiar el link que se agrega desde youtube, por el embed
    youtube = video.split("=").last   
    self.video = "https://www.youtube.com/embed/" + youtube
  end

end
