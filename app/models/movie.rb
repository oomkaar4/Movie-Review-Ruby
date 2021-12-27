class Movie < ApplicationRecord
    
    has_and_belongs_to_many :directors
    has_and_belongs_to_many :actors
    has_and_belongs_to_many :geners
    has_and_belongs_to_many :reviewers
    has_many :movies_reviewers
    validates :title, presence: true
    validates_presence_of :title , :release_date ,:budget 
    mount_uploader :attachment, AttachmentUploader 
    validates :title, presence: true
end
