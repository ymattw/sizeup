(*
 * Thunderbolt display has resolution of 2560x1440
 *)

tell application "Thunderbird"
    set bounds of window 1 to {0, 0, 1920, 1440}
end tell

tell application "iTerm"
    set bounds of window 1 to {540, 0, 2100, 1440}
end tell

tell application "Google Chrome"
    set bounds of window 1 to {450, 22, 2100, 1440}
end tell

tell application "Adium"
    set bounds of window 1 to {2393, 22, 2554, 1440}
end tell

tell application "Calendar"
    set bounds of window 1 to {547, 123, 1983, 1284}
end tell
