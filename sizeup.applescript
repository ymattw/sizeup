#!/usr/bin/osascript

(*
 * Built-in display has resolution of 1440x900
 * Thunderbolt display has resolution of 2560x1440
 * Projector usually has resolution of 1024x768
 *)

set sizes to { ¬
    { ¬
        |app|: "iTerm", ¬
        |1024|: { 0, 0, 1024, 768 }, ¬
        |1440|: { 0, 0, 1440, 900 }, ¬
        |2560|: { 400, 0, 2200, 1440 } ¬
    }, ¬
    { ¬
        |app|: "TextMate", ¬
        |1024|: { 50, 50, 800, 700 }, ¬
        |1440|: { 50, 50, 1240, 800 }, ¬
        |2560|: { 550, 150, 1700, 1000 } ¬
    }, ¬
    { ¬
        |app|: "Google Chrome", ¬
        |1024|: { 0, 0, 1024, 768 }, ¬
        |1440|: { 0, 0, 1440, 900 }, ¬
        |2560|: { 450, 0, 2100, 1440 } ¬
    }, ¬
    { ¬
        |app|: "Adium", ¬
        |1024|: { 863, 0, 1024, 768 }, ¬
        |1440|: { 1279, 0, 1440, 900 }, ¬
        |2560|: { 2393, 0, 2554, 1440 } ¬
    }, ¬
    { ¬
        |app|: "Calendar", ¬
        |1024|: { 0, 0, 1024, 768 }, ¬
        |1440|: { 0, 0, 1440, 900 }, ¬
        |2560|: { 550, 150, 2170, 1400 } ¬
    } ¬
}

tell application "Finder"
    set {_, _, screenWidth, _} to get bounds of window of desktop
end tell

-- Accessing record with a variable as index is very difficult, WTF Apple?!
repeat with targetApp in sizes
    set appName to |app| of targetApp
    if screenWidth >= 2560 then
        set appSize to |2560| of targetApp
    else if screenWidth >= 1440 then
        set appSize to |1440| of targetApp
    else if screenWidth >= 1024 then
        set appSize to |1024| of targetApp
    else
        set appSize to |1024| of targetApp
    end if

    tell application appName
        set bounds of window 1 to appSize
    end tell
end repeat
