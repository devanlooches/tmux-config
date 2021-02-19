tell application "Mail"
	do shell script "sleep 300"
	run
	try
		set miniaturized of windows to true
	end try
	if unread count of inbox > 0 then
		set a to unread count of inbox
		set a to "│ 📩 " & a
		return a
	end if
end tell
