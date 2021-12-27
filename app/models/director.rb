class Director < ApplicationRecord
   # has_and_belongs_to_many :movies
   validates_presence_of :dir_f_name, :dir_l_name
end
