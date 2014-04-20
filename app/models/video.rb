class Video < ActiveRecord::Base
  attr_accessible :description, :genre, :title, :url
end
