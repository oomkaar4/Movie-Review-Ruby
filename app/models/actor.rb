class Actor < ApplicationRecord
    #validates :actor_gender ,length: { minimum: 1 }
    belongs_to :city, optional: true
    has_and_belongs_to_many :movies
    validates_presence_of :actor_gender, :actor_f_name, :actor_l_name
end
