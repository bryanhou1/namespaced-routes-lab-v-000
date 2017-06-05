class Artist < ActiveRecord::Base
  has_many :songs

	def self.sorted_artists_if_defined
		if p = Preference.first && o = p.artist_sort_order 
			all.order(name: o)
		else
			all
		end
	end

# .order(name: Preference.first.artist_sort_order)
# .order(title: Preference.first.song_sort_order)
end
