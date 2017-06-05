class Artist < ActiveRecord::Base
  has_many :songs

	def self.sorted_artists_if_defined
		if p = Preference.first && o = p.artist_sort_order 
			all.order(name: o)
		else
			all
		end
	end
end
