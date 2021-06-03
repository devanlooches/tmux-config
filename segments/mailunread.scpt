tell application "System Events"
	set mailRun to false
	if (get name of every application process) contains "Mail" then
		set mailRun to true
	end if
end tell

if mailRun = true then
	tell application "Mail"
		if unread count of inbox > 0 then
			set a to unread count of inbox
			set a to "│ 📩 " & a
			return a
		end if
	end tell
else
	tell application "Mail"
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
end if
