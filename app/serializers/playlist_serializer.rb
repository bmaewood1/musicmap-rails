class PlaylistSerializer < ActiveModel::Serializer
    attributes :id, :location, :user_id
  end