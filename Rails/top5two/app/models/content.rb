class Content < ActiveRecord::Base
  belongs_to :artist
  belongs_to :song
  belongs_to :album
  belongs_to :user
end
