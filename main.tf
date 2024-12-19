

provider "spotify" {
  api_key = "dVAUtE75zRn1to6S1FGzXg16XW9rvCTIHwMfUPmEnxoRJrC70PBsS7Wj0EWBkyZm"
}
resource "spotify_playlist" "playlist" {
  name        = "My playlist bolly"
  description = "My bolly playlist is so awesome"
  tracks = ["16kiQQ4BoLHDyj5W2fkfNK"]
}
resource "spotify_playlist" "ariana_grande" {
  name        = "My Ariana Grande Playlist"

  tracks = flatten([
    data.spotify_search_track.ariana_grande.tracks[*].id,
  ])
}

data "spotify_search_track" "ariana_grande" {
  artist = "Ariana Grande"
  limit = 10
}
resource "spotify_library_albums" "hindi_new_song" {
  albums = [ 
    data.spotify_album.hindi_new_song.id,
    data.spotify_album.tunuk.id
   ]
}
data "spotify_album" "tunuk" {
  
spotify_id = "4Irdyq9rECUKdUMpiRpdoK"
}
data "spotify_album" "hindi_new_song" {
  
url = "https://open.spotify.com/album/3nRnJkUJYFfxcOGgU6LNci"
}

 output "playlist_url" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.playlist.id}"
  description = "Visit this URL in your browser to listen to the playlist"
}

 output "ariana_grande" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.ariana_grande.id}"
  description = "Visit this URL in your browser to listen to the playlist"
}

 output "hindi_new_song" {
  value       = "https://open.spotify.com/playlist/${spotify_library_albums.hindi_new_song.id}"
  description = "Visit this URL in your browser to listen to the playlist"
}

