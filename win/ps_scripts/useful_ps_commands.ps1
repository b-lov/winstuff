# download torrent into Downloads with no seeding
aria2c --dir="$env:USERPROFILE\Downloads" --seed-time=0 "magnet:?xt=urn:btih:HASH"