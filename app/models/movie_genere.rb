class MovieGenere < ApplicationRecord
    belongs_to :movie_id
    belongs_to :gener_id
end
