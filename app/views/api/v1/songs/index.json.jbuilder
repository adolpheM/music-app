  json.array! @songs.each do |song|
    json.id song.id 
    json.name song.name
    json.artist song.artist
    json.rating song.rating 

  end 