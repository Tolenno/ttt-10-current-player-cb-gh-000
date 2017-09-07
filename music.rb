music_library = [
  ["Adele",
    ["19",
      ["Day Dreamer", "Best for Last"]
    ],
    ["21",
      ["Rolling in the Deep", "Rumor Has It"]
    ]
  ],
  ["Beyonce",
    ["4",
      ["1 + 1", "Countdown"]
    ],
    ["Beyonce",
      ["Haunted", "Pretty Hurts"]
    ]
  ]
]

def spotify(music_library)
  music_library.each do |artist_array| #artists directory. Returns whole array subfolders.
  artist_array.each do |artist_element| #album directory. Returns ["19", ["Day Dreamer", "Best for Last"]] for Adele
    if artist_element.class != Array #ignore strings like "Adele"
      puts "Artist: #{artist_element}"
    else
      artist_element.each do |album_element|
        if album_element.class != Array
          puts "Album: #{album_element}"
        else
          album_element.each do |song_element|
            puts "Song: #{song_element}"
          end
        end
      end
    end
  end
end
end

spotify(music_library)
