class Stream < ApplicationRecord
  belongs_to :song, counter_cache: true
  belongs_to :user, optional: true
end
