module Swimmy
  module Resource
    class ArtistInfo
      def initialize(name, genres, tracks, related_artists)
        @name = name
        @genres = genres  
        @tracks = tracks
        @related_artists = related_artists
      end

      def name
        return @name
      end

      def genres
        genrus = []
        @genres.each { |genre|  genrus << "#{genre}" }
        return genrus
      end

      def popular_tracks
        # popularityの値が大きい順にソート
        sorted_tracks = @tracks.sort_by{|track| track.popularity}.reverse
        tracks = []
        sorted_tracks.each { |track| tracks << "#{track.name}" }
        return tracks
      end

      def related_artists
        related_artists = []
        @related_artists.each { |related_artist| related_artists << "#{related_artist.name}" }
        return related_artists
      end      
    end
  end
end  # module Swimmy
