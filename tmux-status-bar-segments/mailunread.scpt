tell application "Mail"
	if unread count of inbox > 0 then
		set a to unread count of inbox
		set a to "│ 📩 " & a
	end if
end tell
