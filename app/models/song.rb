class Song < ApplicationRecord
    has_one :event
    belongs_to :playlist

end
