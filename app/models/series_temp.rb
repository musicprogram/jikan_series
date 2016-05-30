class SeriesTemp < ActiveRecord::Base
  has_many :seasons, dependent: :destroy
  accepts_nested_attributes_for :seasons, reject_if: :all_blank, allow_destroy: true
  has_many :comentarios, dependent: :destroy    
end
