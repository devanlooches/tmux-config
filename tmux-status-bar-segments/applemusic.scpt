tell application "System Events"
	set process_list to (name of every process)
end tell
if process_list contains "Music" then
	tell application "Music"
		if player state is playing then
			set track_name to name of current track
			set artist_name to artist of current track
			set now_playing to artist_name & " - " & track_name
			set now_playing to " 🎵" & now_playing & " "
			return now_playing
		end if
	end tell
end if
