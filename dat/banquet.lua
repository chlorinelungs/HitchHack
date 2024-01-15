-- The Bad Bar
-- Kestrel Gregorich-Trevor
--
-- It's a party???

des.level_init({ style = "solidfill", fg = " " });

des.level_flags("mazelevel");

des.message("The air is filled with the sound of the clanking of tankards and a raucous bar fight!")
des.map({ halign = "center", valign = "center", map = [[
    ------------------------------------------------------    
    .|..........|........|..........|........|..........|.    
    .|......--..|........|..........|...........--......|.    
.....|......--..|........FFFFFF+FFFFF...........--......|.....
.....|..................................................|.....
..............................................................
.....|......--..................................--......|.....
    .|......--..|.............---...............--......|.    
    .|..........|------.......---......-----|..........|.     
                 .............---............                 
                 ............................                 
                 .--......................--.                 
                 .--......................--.                 
                 ............................                  
]]});

-- Features
des.levregion({ region = {30,01,30,01}, exclude = {0,0,0,0}, type="branch" })
des.stair("down", 30,01)

-- Some statues by the entrance.
des.object({id="statue", x=17, y=12,montype="h",historic=false})
des.object({id="statue", x=44, y=12,montype="H",historic=true})
des.door(31,02)

-- Adventurer Types
local patrons = { "apprentice", "warrior", "ninja", "thug",
                    "hunter", "acolyte", "abbot", "page",
                    "attendant", "neanderthal", "chieftain",
                    "student", "wizard", "valkyrie", "tourist",
                    "samurai", "rogue", "ranger", "cleric", 
                    "monk", "knight", "healer",
                    "cave dweller", "barbarian",
                    "archeologist", "dragon rider",
                    "doppelganger" };

-- "Disgruntled" Adventurers.
for i = 0, 30 do
    shuffle(patrons)
    des.monster({id = patrons[1], peaceful = 0})
end

-- Peaceful Patrons
for i = 0, 15 do
    shuffle(patrons)
    des.monster({id = patrons[1], peaceful = 1})
end

-- Graffiti
des.engravying({type="graffiti", text="Welcome to the bar of disgruntled adventurers!"})
des.engravying({type="graffiti", text="Rodney stinks!"})
des.engravying({type="graffiti", text="Drinking >>>> Questing!"})

-- Booze
des.object("keg", 0, 2)
des.object("keg")
des.object("keg")
des.object("booze")
des.object("booze")
des.object("booze")
des.object("booze")
des.object("booze")
des.object("booze")
des.object("booze")
des.object("booze")
des.object("booze")
des.object("booze")
des.object("booze")