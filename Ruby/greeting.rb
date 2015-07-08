def greeting(name)
  opener = ['Hi!', 'Hello,', 'Yo!', 'G\'day,']
  puts "#{opener.sample} #{name}!"
end

puts "What is your name?"

name = gets.chomp

greeting (name)


[
  { :album_gnid=>61166086, 
    :album_artist_name=>"Interpol",
    :album_title=>"Antics",
    :album_year=>"2004",
    :genre=>[{
      :id=>0, 
      :text=>"Alternative & Punk"}, 
      {:id=>0, :text=>"Indie Rock"}, 
      {:id=>0, :text=>"Post-Punk Revival"}
      ],
    :album_art_url=>[
      "http://akamai-b.cdn.cddbp.net/cds/2.0/cover/E2D3/2A22/3D4B/34CF_medium_front.jpg?cid=2000896",
      "http://web.content.cddbp.net/cds/2.0?id=35227022DBBC1D43&client=2000896&class=biography&type=text/plain&tag=022QlnZ6xDyqAWSscy4BmniRNgNH9aB7ncH5rbvqMGzO-Woa42tYFPGA",
      "http://akamai-b.cdn.cddbp.net/cds/2.0/image-artist/B516/AB4D/3831/4375_medium_front.jpg?cid=2000896",
      "http://web.content.cddbp.net/cds/2.0?id=A3E630FCAD3B3549&client=2000896&class=review&type=text/plain&tag=02PMljMIwO-I1bugsoaPwPsBfiquZ4hyUpd494NYMo.e84t6yv4y11Gg"
      ], 
    :artist_image_url=>[
      "http://akamai-b.cdn.cddbp.net/cds/2.0/cover/E2D3/2A22/3D4B/34CF_medium_front.jpg?cid=2000896", 
      "http://web.content.cddbp.net/cds/2.0?id=35227022DBBC1D43&client=2000896&class=biography&type=text/plain&tag=022QlnZ6xDyqAWSscy4BmniRNgNH9aB7ncH5rbvqMGzO-Woa42tYFPGA",
      "http://akamai-b.cdn.cddbp.net/cds/2.0/image-artist/B516/AB4D/3831/4375_medium_front.jpg?cid=2000896",
      "http://web.content.cddbp.net/cds/2.0?id=A3E630FCAD3B3549&client=2000896&class=review&type=text/plain&tag=02PMljMIwO-I1bugsoaPwPsBfiquZ4hyUpd494NYMo.e84t6yv4y11Gg"],
    :artist_bio_url=>[
      "http://akamai-b.cdn.cddbp.net/cds/2.0/cover/E2D3/2A22/3D4B/34CF_medium_front.jpg?cid=2000896",
      "http://web.content.cddbp.net/cds/2.0?id=35227022DBBC1D43&client=2000896&class=biography&type=text/plain&tag=022QlnZ6xDyqAWSscy4BmniRNgNH9aB7ncH5rbvqMGzO-Woa42tYFPGA",
      "http://akamai-b.cdn.cddbp.net/cds/2.0/image-artist/B516/AB4D/3831/4375_medium_front.jpg?cid=2000896", "http://web.content.cddbp.net/cds/2.0?id=A3E630FCAD3B3549&client=2000896&class=review&type=text/plain&tag=02PMljMIwO-I1bugsoaPwPsBfiquZ4hyUpd494NYMo.e84t6yv4y11Gg"
      ],
    :review_url=>[
      "http://akamai-b.cdn.cddbp.net/cds/2.0/cover/E2D3/2A22/3D4B/34CF_medium_front.jpg?cid=2000896",
      "http://web.content.cddbp.net/cds/2.0?id=35227022DBBC1D43&client=2000896&class=biography&type=text/plain&tag=022QlnZ6xDyqAWSscy4BmniRNgNH9aB7ncH5rbvqMGzO-Woa42tYFPGA",
      "http://akamai-b.cdn.cddbp.net/cds/2.0/image-artist/B516/AB4D/3831/4375_medium_front.jpg?cid=2000896",
      "http://web.content.cddbp.net/cds/2.0?id=A3E630FCAD3B3549&client=2000896&class=review&type=text/plain&tag=02PMljMIwO-I1bugsoaPwPsBfiquZ4hyUpd494NYMo.e84t6yv4y11Gg"
      ],
    :artist_era=>[
      {:id=>0, :text=>"2000's"}
      ],
    :artist_type=>[
      {:id=>0, :text=>"Male"},
      {:id=>0,
        :text=>"Male Group"}
      ], 
    :artist_origin=>[
      {:id=>0, :text=>"North America"},
      {:id=>0, :text=>"United States"},
      {:id=>0, :text=>"New York"},
      {:id=>0, :text=>"New York City"}
      ],
    :tracks=>[
      {:track_number=>"1",
        :track_gnid=>"61166087-217CA790DF66C86D2F999168FD6BAD41",
        :track_title=>"Next Exit",
        :track_artist_name=>"Interpol",
        :mood=>[
          {:id=>0,
            :text=>"Brooding"},
          {:id=>0,
            :text=>"Dreamy Brooding"}
          ], 
        :tempo=>[
          {:id=>0,
            :text=>"Medium Tempo"},
          {:id=>0, :text=>"Medium"},
          {:id=>0, :text=>"80s"}
        ]
      } 
    ]
  }
]






spec = {:clientID => "2000896", :clientTag => "63F1E7CAE797748477AC696A41F68844"}
obj = Gracenote.new(spec)
obj.registerUser

# for song/artist info

data1 =  obj.findTrack("artist", "", "song", '0')

@artist = Artist.find_or_create_by(name: data1[0][:album_artist_name])

@album = Album.find_or_create_by(name: data1[0][:album_title], artist_id: data1[0][:album_title])

@song = Song.find_or_create_by(name: data1[0][:tracks][0][:track_title], artist_id: @artist.id, album_id: @album.id)

#for full album info

data1 =  obj.findTrack("artist", "album", "", '0')
data1[0][:tracks].each do |x| 
  
  setter_song = Song.find_or_create_by()
  x[:track_title]

end





    #for full album info

#    data1 =  obj.findTrack("artist", "album", "", '0')
#    
#    data1[0][:tracks].each do |x| 
#      setter_song = Song.find_or_create_by()
#      x[:track_title]
#    end   