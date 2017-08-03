class Character < ApplicationRecord
   belongs_to :house,  dependent: :destroy
 end
