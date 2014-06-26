-- Portions of this AppleScript may incorporate work from 3rd 
-- parties. These portions of code are noted. All other work is 
-- Copyright © 2010 — 2013 Codeux Software. See README 
-- for full license information. 

-- This is supposed to returned an upright :| face.

-- This script uses invisible characters for IRC formatting. That
-- is why the result as seen by Textual is not the same as seen
-- in this actual source code.

on textualcmd(user)
	tell application "Spotify" to set xart to get current track's artist
	tell application "Spotify" to set xalb to get current track's album
	tell application "Spotify" to set xname to get current track's name
	return "/me 𝄞 " & xart & " : " & xname & " (" & xalb & ")"
end textualcmd
