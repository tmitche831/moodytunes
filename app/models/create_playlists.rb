# == Schema Information
#
# Table name: create_playlists
#
#  id         :integer          not null, primary key
#  playlist_1 :string(255)
#  playlist_2 :string(255)
#  playlist_3 :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class CreatePlaylists < ActiveRecord::Base
end
