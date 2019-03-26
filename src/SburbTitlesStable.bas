dim shared as integer a,b,c,rgb1,rgb2,rgb3,rgb1b,rgb2b,rgb3b
dim shared as string CharGender,TitleName1,TitleName2,Land,Land1,Land2,Handle1,Handle2,ChumHandle
dim shared as string Element,Land3,Land4,Land5,Land6
dim shared as string ConsortQuirk,ConsortColor,ConsortType,ConsortLike,ConsortString
dim shared as string Interest,InterestItem,Interest1,Interest1Item,Interest2,Interest2Item
dim shared as string StrifeSpecibus,Weapon,Initial1,Initial2,NextLetter
Dim shared As Integer mousex, mousey, buttons, res, LeftClickCounter, RightClickCounter, LeftClick, RightClick
Declare Sub DetectClick()
Declare Sub FindTitleName1()
Declare Sub FindTitleName2()
Declare Sub FindHandle1()
Declare Sub FindHandle2()
Declare Sub FindElement()
Declare Sub ConsortGeneration()
Declare Sub FindConsortQuirk()
Declare Sub FindConsortColor()
Declare Sub FindConsortType()
Declare Sub FindConsortLike()
Declare Sub LandGeneration()
declare Sub SubthemeGeneration()
Declare Sub FindLand()
Declare Sub InterestGeneration()
Declare Sub FindInterest()
Declare Sub FindStrifeSpecibus()
Declare Sub Main()
Declare Sub PrintMenu()
Declare Sub PrintCharacter()
Declare Sub ChooseNextLetter()
Declare Sub NewColor()







'Start of Program'
CharGender = "N"
Initial1 = "any"
Initial2 = "any"
LeftClick = 0
RightClick = 0
Screen 18, 32
Main()
PrintCharacter()
PrintMenu()

'Mouse loop
Do
' Get mouse x, y and buttons. Discard wheel position.
    res = GetMouse (mousex, mousey, , buttons)


If res <> 0 Then '' Failure
Else

'Reroll Character
        if mousex>475 and mousex<630 and mousey>12 and mousey<34 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
                Main()
                PrintCharacter()
                PrintMenu()
                end if
        end if
'Gender Button
        if mousex>475 and mousex<556 and mousey>44 and mousey<66 then
            DetectClick()
            if LeftClick > 0 and CharGender = "F" then
                CharGender = "N"
                LeftClick = 0
                PrintMenu()
                end if
            if LeftClick > 0 and CharGender = "M" then
                CharGender = "F"
                LeftClick = 0
                PrintMenu()
                end if
            if LeftClick > 0 and CharGender = "N" then
                CharGender = "M"
                LeftClick = 0
                PrintMenu()
                end if
        end if
'Color
        if mousex>570 and mousex<630 and mousey>44 and mousey<66 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
                NewColor()
                PrintMenu()
                PrintCharacter()
                end if
        end if        
'Roll New Initials Button
        if mousex>475 and mousex<553 and mousey>76 and mousey<98 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
                FindHandle1()
                FindHandle2()
                ChumHandle = Handle1 + Handle2
                PrintCharacter()
                PrintMenu()
                end if
        end if
'First Initial Button
        if mousex>558 and mousex<585 and mousey>76 and mousey<98 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
                NextLetter = Initial1
                ChooseNextLetter()
                Initial1 = NextLetter
                PrintMenu()
                end if
            if RightClick > 0 then
                RightClick = 0
                Initial1 = "any"
                PrintMenu()
                end if
        end if
'Last Initial Button
        if mousex>598 and mousex<625 and mousey>76 and mousey<98 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
                NextLetter = Initial2
                ChooseNextLetter()
                Initial2 = NextLetter
                PrintMenu()
                end if
            if RightClick > 0 then
                RightClick = 0
                Initial2 = "any"
                PrintMenu()
                end if
        end if
'TitleName1
        if mousex>475 and mousex<630 and mousey>108 and mousey<130 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
                    FindTitleName1()
                PrintMenu()
                PrintCharacter()
                end if
        end if
'TitleName2
        if mousex>475 and mousex<630 and mousey>140 and mousey<162 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
                    FindTitleName2()
                PrintMenu()
                PrintCharacter()
                end if
        end if
'Element
        if mousex>475 and mousex<630 and mousey>172 and mousey<194 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
                FindElement()
                PrintMenu()
                PrintCharacter()
                end if
        end if
'Specibus
if mousex>475 and mousex<630 and mousey>204 and mousey<226 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
                FindStrifeSpecibus()
                PrintMenu()
                PrintCharacter()
                end if
        end if
'Interest Generation
        if mousex>475 and mousex<630 and mousey>236 and mousey<258 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
                InterestGeneration()
                PrintMenu()
                PrintCharacter()
                end if
        end if
'Consorts
        if mousex>475 and mousex<630 and mousey>268 and mousey<290 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
                ConsortGeneration()
                PrintMenu()
                PrintCharacter()                
                end if
        end if
'Land Name
        if mousex>475 and mousex<630 and mousey>300 and mousey<322 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
                LandGeneration()
                PrintMenu()
                PrintCharacter()                
                end if
        end if
'Land Subthemes
        if mousex>475 and mousex<630 and mousey>332 and mousey<354 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
                SubthemeGeneration()
                PrintMenu()
                PrintCharacter()                
                end if
        end if
'SaveCharacter
        if mousex>475 and mousex<630 and mousey>364 and mousey<386 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
Open "saved.txt" For Append As #1
Print #1, UCase(Left(Handle1,1)) + UCase(Left(Handle2,1)) + ", " + ChumHandle + ", " + Titlename1 + " of " + TitleName2, "Colors: ("; rgb1; ","; rgb2; ","; rgb3; "), ("; rgb1b; ","; rgb2b; ","; rgb3b; "), Element: " + Element + ", Interests: " + Interest1 + ", " + Interest2, StrifeSpecibus + ", " + Weapon + ", + " + Interest1Item + ", + " + Interest2Item + ", Land of " + Land1 + " and " + Land2 + ", Subthemes: " + Land3 + ", " + Land4 + ", " + Land5 + ", " + Land6 + ", " + "Consorts: " + ConsortString + " that like " + ConsortLike,
Print #1, ""
Print #1, ""
close
locate 25,30
print "Saved"
            end if
        end if
'UnusedButton
        if mousex>475 and mousex<630 and mousey>396 and mousey<418 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
'                Main()
                PrintMenu()
                end if
        end if
'UnusedButton
        if mousex>475 and mousex<630 and mousey>428 and mousey<450 then
            DetectClick()
            if LeftClick > 0 then
                LeftClick = 0
'                Main()
                PrintMenu()
                end if
        end if

End If

sleep 100
Loop While Inkey = ""

End

'end of big loop

sub PrintMenu()
    
    Color RGB(rgb1, rgb2, rgb3), RGB(rgb1, rgb2, rgb3)
Line (475, 12)- (630, 34), ,BF
Line (475, 44)- (556, 66), ,BF
Line (570, 44)- (630, 66), ,BF
Line (475, 76)- (553, 98), ,BF
Line (558, 76)- (585, 98), ,BF
Line (598, 76)- (625, 98), ,BF
Line (475, 108)- (630, 130), ,BF
Line (475, 140)- (630, 162), ,BF
Line (475, 172)- (630, 194), ,BF
Line (475, 204)- (630, 226), ,BF
Line (475, 236)- (630, 258), ,BF
Line (475, 268)- (630, 290), ,BF
Line (475, 300)- (630, 322), ,BF
Line (475, 332)- (630, 354), ,BF
Line (475, 364)- (630, 386), ,BF
Line (475, 396)- (630, 418), ,BF
Line (475, 428)- (630, 450), ,BF
if rgb1+rgb2+rgb3 < 384 then Color RGB(255, 255, 255), RGB(rgb1, rgb2, rgb3)
if rgb1+rgb2+rgb3 > 383 then Color RGB(1, 1, 1), RGB(rgb1, rgb2, rgb3)
locate 2,61
Print "New Everything"
locate 4,61
Print "Gender: "; CharGender
locate 4,73
Print "Color"
locate 6,61
Print "Initials:"
locate 6,71
Print Initial1
locate 6,76
Print Initial2
locate 8,61
Print "'"; TitleName1; "'"
locate 10,61
Print "'of "; TitleName2; "'"
locate 12,61
Print "Element"
locate 14,61
Print "Weapon"
locate 16,61
Print "Interests"
locate 18,61
Print "Consorts"
locate 20,61
Print "New Land Name"
locate 22,61
Print "New Subthemes"
locate 24,61
Print "Save Character"

Color RGB(255, 255, 255), RGB(10, 10, 10)
end sub



sub PrintCharacter()
Color RGB(255, 255, 255), RGB(10, 10, 10)
Cls                     
PrintMenu()

Color RGB(rgb1b, rgb2b, rgb3b), RGB(rgb1b, rgb2b, rgb3b)
'All the boxes
Line (5, 12)- (465, 34), ,BF
Line (5, 44)- (465, 162), ,BF
Line (5, 172)- (465, 290), ,BF

'Now words
Color RGB(1, 1, 1), RGB(rgb1b, rgb2b, rgb3b)

Locate 2, 3
Print Chumhandle; ", "; TitleName1; " of "; TitleName2

Locate 4, 3
Print "Interests: "; Interest1;
    if Interest2 <> "" then
    print " and "; Interest2
    end if
Locate 5, 3
Print "Element: "; Element
Locate 6, 3
Print "Specibus: "; StrifeSpecibus
Locate 8, 4
Print "Main Weapon: "; Weapon
Locate 9, 4
Print "+ "; Interest1Item
Locate 10, 4
Print "+ "; Interest2Item

Locate 12, 3
Print "Land of "; Land1; " and "; Land2
Locate 14, 3
Print "Sub-themes: "; Land3; ", "; Land4; ", "
Locate 15, 16
Print Land5; ", "; Land6
Locate 17, 3
Print "Consorts: "; ConsortString
Locate 18, 16
Print "that like "; ConsortLike
    
end sub

Sub Main()

LandGeneration()
SubthemeGeneration()
InterestGeneration()
FindTitleName1()
FindTitleName2()
FindElement()
FindHandle1()
FindHandle2()
ChumHandle = Handle1 + Handle2
ConsortGeneration
FindStrifeSpecibus()
NewColor()

PrintMenu()
PrintCharacter()
end sub


Sub NewColor()
'Random Color
Randomize
rgb1 = Int(Rnd * 255) + 1
Randomize
rgb2 = Int(Rnd * 255) + 1
Randomize
rgb3 = Int(Rnd * 255) + 1

'Pastel that fucker
rgb1b = int((rgb1 + 255)/2)
rgb2b = int((rgb2 + 255)/2)
rgb3b = int((rgb3 + 255)/2)

if (rgb1b - rgb1) < 40 and (rgb2b - rgb2) < 40 and (rgb3b - rgb3) < 40 then
    rgb1 = rgb1 - 40
    rgb2 = rgb2 - 40
    rgb3 = rgb3 - 40
    end if

if rgb1 + rgb2 + rgb3 < 60 then
    Randomize
    a = Int(Rnd * 100) + 1
    Randomize
    b = Int(Rnd * 100) + 1
    Randomize
    c = Int(Rnd * 100) + 1
    rgb1 = rgb1 + a
    rgb2 = rgb2 + b
    rgb3 = rgb3 + c
end if
if rgb1 + rgb2 + rgb3 < 60 then
    Randomize
    a = Int(Rnd * 30) + 20
    Randomize
    b = Int(Rnd * 30) + 20
    Randomize
    c = Int(Rnd * 30) + 20
    rgb1 = rgb1 + a
    rgb2 = rgb2 + b
    rgb3 = rgb3 + c
end if


end sub


sub InterestGeneration()

DoInterest1Right:
    FindInterest()
    Interest1 = Interest
    Interest1Item = InterestItem

DoInterest2Right:
    FindInterest()
    If InterestItem <> Interest1Item then
        Interest2 = Interest
        Interest2Item = InterestItem
    else
        goto DoInterest2Right
    end if

If Interest2 = Interest1 then Interest2 = ""

end sub

sub LandGeneration()

DoLand1Right:
    FindLand()
    Land1 = Land
DoLand2Right:
    FindLand()
    If Land <> Land1 then
        Land2 = Land
    else
        goto DoLand2Right
    end if

end sub

sub SubthemeGeneration()
DoLand3Right:
    FindLand()
    If Land <> Land1 and Land <> Land2 then
        Land3 = Land
    else
        goto DoLand3Right
    end if
DoLand4Right:
    FindLand()
    If Land <> Land1 and Land <> Land2 and Land <> Land3 then
        Land4 = Land
    else
        goto DoLand4Right
    end if
DoLand5Right:
    FindLand()
    If Land <> Land1 and Land <> Land2 and Land <> Land3 and Land <> Land4 then
        Land5 = Land
    else
        goto DoLand5Right
    end if
DoLand6Right:
    FindLand()
    If Land <> Land1 and Land <> Land2 and Land <> Land3 and Land <> Land4 and Land <> Land5 then
        Land6 = Land
    else
        goto DoLand6Right
    end if

end sub

Sub FindTitleName1()
TryTitleName1Again:
Randomize
a = Int(Rnd * 74) + 1
if a = 1 then TitleName1 = "Bane"
if a = 2 then TitleName1 = "Bard"
if a = 3 then TitleName1 = "Foe"
if a = 4 then TitleName1 = "Guide"
if a = 5 then TitleName1 = "Host"
if a = 6 then TitleName1 = "Mage"
if a = 7 then TitleName1 = "Monk"
if a = 8 then TitleName1 = "Page"
if a = 9 then TitleName1 = "Rogue"
if a = 10 then TitleName1 = "Sage"
if a = 11 then TitleName1 = "Spy"
if a = 12 and CharGender <> "M" then TitleName1 = "Sylph"
if a = 12 and CharGender = "M" then goto TryTitleName1Again:
if a = 13 then TitleName1 = "Thane"
if a = 14 then TitleName1 = "Thief"
if a = 15 and CharGender = "F" then TitleName1 = "Countess"
if a = 15 and CharGender <> "F" then TitleName1 = "Count"
if a = 16 and CharGender = "F" then TitleName1 = "Duchess"
if a = 16 and CharGender <> "F" then TitleName1 = "Duke"
if a = 17 and CharGender = "F" then TitleName1 = "Heiress"
if a = 17 and CharGender <> "F" then TitleName1 = "Heir"
if a = 18 and CharGender = "F" then TitleName1 = "Queen"
if a = 18 and CharGender <> "F" then TitleName1 = "King"
if a = 19 and CharGender = "F" then TitleName1 = "Priestess"
if a = 19 and CharGender <> "F" then TitleName1 = "Priest"
if a = 20 and CharGender <> "M" then TitleName1 = "Maid"
if a = 20 and CharGender = "M" then TitleName1 = "Steward"
if a = 21 and CharGender = "M" then TitleName1 = "Warlock"
if a = 21 and CharGender <> "M" then TitleName1 = "Witch"
if a = 22 then TitleName1 = "Absolver"
if a = 23 then TitleName1 = "Ally"
if a = 24 then TitleName1 = "Archer"
if a = 25 then TitleName1 = "Chieftain"
if a = 26 then TitleName1 = "Chief"
if a = 27 then TitleName1 = "Cleric"
if a = 28 then TitleName1 = "Convict"
if a = 29 then TitleName1 = "Corporal"
if a = 30 then TitleName1 = "Druid"
if a = 31 then TitleName1 = "Ensign"
if a = 32 then TitleName1 = "Envoy"
if a = 33 then TitleName1 = "Forger"
if a = 34 then TitleName1 = "Hermit"
if a = 35 then TitleName1 = "Intern"
if a = 36 then TitleName1 = "Dealer"
if a = 37 then TitleName1 = "Hunter"
if a = 38 then TitleName1 = "Juror"
if a = 39 then TitleName1 = "Keeper"
if a = 40 then TitleName1 = "Knave"
if a = 41 then TitleName1 = "Knight"
if a = 42 then TitleName1 = "Marshal"
if a = 43 then TitleName1 = "Ninja"
if a = 44 then TitleName1 = "Noble"
if a = 45 then TitleName1 = "Nurse"
if a = 46 then TitleName1 = "Outlaw"
if a = 47 then TitleName1 = "Pirate"
if a = 48 then TitleName1 = "Poet"
if a = 49 then TitleName1 = "Proctor"
if a = 50 then TitleName1 = "Prophet"
if a = 51 then TitleName1 = "Pupil"
if a = 52 then TitleName1 = "Raider"
if a = 53 then TitleName1 = "Ranger"
if a = 54 then TitleName1 = "Rebel"
if a = 55 then TitleName1 = "Rival"
if a = 56 then TitleName1 = "Saviour"
if a = 57 then TitleName1 = "Scourge"
if a = 58 then TitleName1 = "Scout"
if a = 59 then TitleName1 = "Scribe"
if a = 60 then TitleName1 = "Seeker"
if a = 61 then TitleName1 = "Seer"
if a = 62 then TitleName1 = "Shaman"
if a = 63 then TitleName1 = "Soldier"
if a = 64 then TitleName1 = "Squire"
if a = 65 then TitleName1 = "Stranger"
if a = 66 then TitleName1 = "Trainer"
if a = 67 then TitleName1 = "Usher"
if a = 68 then TitleName1 = "Vassal"
if a = 69 then TitleName1 = "Steward"
if a = 70 then TitleName1 = "Wizard"
if a = 71 then TitleName1 = "Judge"
if a = 72 and CharGender = "F" then TitleName1 = "Abbess"
if a = 72 and CharGender <> "F" then TitleName1 = "Abbot"
if a = 73 and CharGender = "F" then TitleName1 = "Baroness"
if a = 73 and CharGender <> "F" then TitleName1 = "Baron"
if a = 74 and CharGender = "F" then TitleName1 = "Maestress"
if a = 74 and CharGender <> "F" then TitleName1 = "Maestro"
end sub

Sub FindTitleName2()
TryTitleName2Again:
Randomize
a = Int(Rnd * 78) + 1
if a = 1 then TitleName2 = "Bliss"
if a = 2 then TitleName2 = "Blood"
if a = 3 then TitleName2 = "Breath"
if a = 4 then TitleName2 = "Caste"
if a = 5 then TitleName2 = "Cause"
if a = 6 then TitleName2 = "Choice"
if a = 7 then TitleName2 = "Dawn"
if a = 8 then TitleName2 = "Death"
if a = 9 then TitleName2 = "Depth"
if a = 10 then TitleName2 = "Doom"
if a = 11 then TitleName2 = "Dreams"
if a = 12 then TitleName2 = "Faith"
if a = 13 then TitleName2 = "Flesh"
if a = 14 then TitleName2 = "Form"
if a = 15 then TitleName2 = "Gale"
if a = 16 then TitleName2 = "Hate"
if a = 17 then TitleName2 = "Heart"
if a = 18 then TitleName2 = "Height"
if a = 19 then TitleName2 = "Hope"
if a = 20 then TitleName2 = "Joy"
if a = 21 then TitleName2 = "Keys"
if a = 22 then TitleName2 = "Law"
if a = 23 then TitleName2 = "Life"
if a = 24 then TitleName2 = "Light"
if a = 25 then TitleName2 = "Loss"
if a = 26 then TitleName2 = "Love"
if a = 27 then TitleName2 = "Might"
if a = 28 then TitleName2 = "Mind"
if a = 29 then TitleName2 = "Oath"
if a = 30 then TitleName2 = "Peace"
if a = 31 then TitleName2 = "Rage"
if a = 32 then TitleName2 = "Rhyme"
if a = 33 then TitleName2 = "Right"
if a = 34 then TitleName2 = "Self"
if a = 35 then TitleName2 = "Toil"
if a = 36 then TitleName2 = "Shape"
if a = 37 then TitleName2 = "Soul"
if a = 38 then TitleName2 = "Sound"
if a = 39 then TitleName2 = "Space"
if a = 40 then TitleName2 = "Stars"
if a = 41 then TitleName2 = "Time"
if a = 42 then TitleName2 = "Touch"
if a = 43 then TitleName2 = "Truth"
if a = 44 then TitleName2 = "Verve"
if a = 45 then TitleName2 = "Vim"
if a = 46 then TitleName2 = "Void"
if a = 47 then TitleName2 = "Wealth"
if a = 48 then TitleName2 = "Zeal"
if a = 49 then TitleName2 = "Action"
if a = 50 then TitleName2 = "Awesome"
if a = 51 then TitleName2 = "Balance"
if a = 52 then TitleName2 = "Body"
if a = 53 then TitleName2 = "Chaos"
if a = 54 then TitleName2 = "Color"
if a = 55 then TitleName2 = "Cosmos"
if a = 56 then TitleName2 = "Courage"
if a = 57 then TitleName2 = "Eclipse"
if a = 58 then TitleName2 = "Ego"
if a = 59 then TitleName2 = "Faith"
if a = 60 then TitleName2 = "Flesh"
if a = 61 then TitleName2 = "Guile"
if a = 62 then TitleName2 = "Honor"
if a = 63 then TitleName2 = "Imagination"
if a = 64 then TitleName2 = "Impact"
if a = 65 then TitleName2 = "Kindness"
if a = 66 then TitleName2 = "Madness"
if a = 67 then TitleName2 = "Nature"
if a = 68 then TitleName2 = "Order"
if a = 69 then TitleName2 = "Power"
if a = 70 then TitleName2 = "Pulchritude"
if a = 71 then TitleName2 = "Purpose"
if a = 72 then TitleName2 = "Reason"
if a = 73 then TitleName2 = "Season"
if a = 74 then TitleName2 = "Sorrow"
if a = 75 then TitleName2 = "Style"
if a = 76 then TitleName2 = "Umbrage"
if a = 77 then TitleName2 = "Wisdom"
if a = 78 then TitleName2 = "Kinesthetics"
end sub

Sub FindLand()
TryLandAgain:
Randomize
a = Int(Rnd * 339) + 1
if a = 1 then Land = "Acid"
if a = 2 then Land = "Advertisement"
if a = 3 then Land = "Age"
if a = 4 then Land = "Alloy"
if a = 5 then Land = "Alternation"
if a = 6 then Land = "Ambiance"
if a = 7 then Land = "Amusement"
if a = 8 then Land = "Angels"
if a = 9 then Land = "Annoyance"
if a = 10 then Land = "Apathy"
if a = 11 then Land = "Art"
if a = 12 then Land = "Ascent"
if a = 13 then Land = "Ash"
if a = 14 then Land = "Atoll"
if a = 15 then Land = "Autumn"
if a = 16 then Land = "Backstabbing"
if a = 17 then Land = "Bamboo"
if a = 18 then Land = "Bastilles"
if a = 19 then Land = "Beauty"
if a = 20 then Land = "Blankness"
if a = 21 then Land = "Blaze"
if a = 22 then Land = "Boil"
if a = 23 then Land = "Bone"
if a = 24 then Land = "Books"
if a = 25 then Land = "Braille"
if a = 26 then Land = "Brains"
if a = 27 then Land = "Brick"
if a = 28 then Land = "Bridges"
if a = 29 then Land = "Bronze"
if a = 30 then Land = "Brooks"
if a = 31 then Land = "Bubbles"
if a = 32 then Land = "Buldge"
if a = 33 then Land = "Burlap"
if a = 34 then Land = "Butterflies"
if a = 35 then Land = "Cacophony"
if a = 36 then Land = "Cacti"
if a = 37 then Land = "Cages"
if a = 38 then Land = "Canopy"
if a = 39 then Land = "Canyons"
if a = 40 then Land = "Carbon"
if a = 41 then Land = "Carpet"
if a = 42 then Land = "Cathedrals"
if a = 43 then Land = "Caves"
if a = 44 then Land = "Chains"
if a = 45 then Land = "Change"
if a = 46 then Land = "Charge"
if a = 47 then Land = "Chemicals"
if a = 48 then Land = "Chocolate"
if a = 49 then Land = "Circuitry"
if a = 50 then Land = "Clay"
if a = 51 then Land = "Cliffs"
if a = 52 then Land = "Clockwork"
if a = 53 then Land = "Clouds"
if a = 54 then Land = "Cobalt"
if a = 55 then Land = "Cobblestone"
if a = 56 then Land = "Concrete"
if a = 57 then Land = "Construction"
if a = 58 then Land = "Contact"
if a = 59 then Land = "Contrast"
if a = 60 then Land = "Copper"
if a = 61 then Land = "Coral"
if a = 62 then Land = "Cotton"
if a = 63 then Land = "Crossroads"
if a = 64 then Land = "Crystal"
if a = 65 then Land = "Cubes"
if a = 66 then Land = "Curses"
if a = 67 then Land = "Dance"
if a = 68 then Land = "Dew"
if a = 69 then Land = "Dawn"
if a = 70 then Land = "Death"
if a = 71 then Land = "Decor"
if a = 72 then Land = "Depth"
if a = 73 then Land = "Descent"
if a = 74 then Land = "Desolation"
if a = 75 then Land = "Diamond"
if a = 76 then Land = "Dirt"
if a = 77 then Land = "Disease"
if a = 78 then Land = "Dismay"
if a = 79 then Land = "Dolls"
if a = 80 then Land = "Dragons"
if a = 81 then Land = "Drought"
if a = 82 then Land = "Dungeons"
if a = 83 then Land = "Dust"
if a = 84 then Land = "Dye"
if a = 85 then Land = "Ebony"
if a = 86 then Land = "Echo"
if a = 87 then Land = "Eldritch"
if a = 88 then Land = "Electronics"
if a = 89 then Land = "Elegance"
if a = 90 then Land = "Emeralds"
if a = 91 then Land = "Evergreens"
if a = 92 then Land = "Falsehood"
if a = 93 then Land = "Fatigue"
if a = 94 then Land = "Fear"
if a = 95 then Land = "Festivities"
if a = 96 then Land = "Fire"
if a = 97 then Land = "Flame"
if a = 98 then Land = "Flow"
if a = 99 then Land = "Flowers"
if a = 100 then Land = "Fog"
if a = 101 then Land = "Forest"
if a = 102 then Land = "Fortification"
if a = 103 then Land = "Fossils"
if a = 104 then Land = "Freefall"
if a = 105 then Land = "Frost"
if a = 106 then Land = "Fungi"
if a = 107 then Land = "Fur"
if a = 108 then Land = "Gardens"
if a = 109 then Land = "Germs"
if a = 110 then Land = "Ghosts"
if a = 111 then Land = "Glamour"
if a = 112 then Land = "Glass"
if a = 113 then Land = "Glitter"
if a = 114 then Land = "Gloom"
if a = 115 then Land = "Glow"
if a = 116 then Land = "Glue"
if a = 117 then Land = "Gold"
if a = 118 then Land = "Graphite"
if a = 119 then Land = "Grass"
if a = 120 then Land = "Graves"
if a = 121 then Land = "Gravity"
if a = 122 then Land = "Gust"
if a = 123 then Land = "Hail"
if a = 124 then Land = "Hallucinations"
if a = 125 then Land = "Harbors"
if a = 126 then Land = "Hats"
if a = 127 then Land = "Hay"
if a = 128 then Land = "Haze"
if a = 129 then Land = "Heat"
if a = 130 then Land = "Hedges"
if a = 131 then Land = "Henge"
if a = 132 then Land = "Hills"
if a = 133 then Land = "Holes"
if a = 134 then Land = "Holly"
if a = 135 then Land = "Horror"
if a = 136 then Land = "Ice"
if a = 137 then Land = "Illusion"
if a = 138 then Land = "Ink"
if a = 139 then Land = "Insanity"
if a = 140 then Land = "Insomnia"
if a = 141 then Land = "Intimidation"
if a = 142 then Land = "Iron"
if a = 143 then Land = "Irradiation"
if a = 144 then Land = "Irrigation"
if a = 145 then Land = "Islands"
if a = 146 then Land = "Ivory"
if a = 147 then Land = "Jails"
if a = 148 then Land = "Jazz"
if a = 149 then Land = "Jokers"
if a = 150 then Land = "Jolliness"
if a = 151 then Land = "Jungle"
if a = 152 then Land = "Junk"
if a = 153 then Land = "Juxtaposition"
if a = 154 then Land = "Karaoke"
if a = 155 then Land = "Karate"
if a = 156 then Land = "Knowledge"
if a = 157 then Land = "Labyrinth"
if a = 158 then Land = "Ladders"
if a = 159 then Land = "Lakes"
if a = 160 then Land = "Lasers"
if a = 161 then Land = "Laughter"
if a = 162 then Land = "Law"
if a = 163 then Land = "Laze"
if a = 164 then Land = "Leaves"
if a = 165 then Land = "Levitation"
if a = 166 then Land = "Light"
if a = 167 then Land = "Loam"
if a = 168 then Land = "Luck"
if a = 169 then Land = "Magma"
if a = 170 then Land = "Magnets"
if a = 171 then Land = "Maps"
if a = 172 then Land = "Marsh"
if a = 173 then Land = "Meadow"
if a = 174 then Land = "Melody"
if a = 175 then Land = "Mercury"
if a = 176 then Land = "Mirrors"
if a = 177 then Land = "Mirth"
if a = 178 then Land = "Misers"
if a = 179 then Land = "Mist"
if a = 180 then Land = "Moss"
if a = 181 then Land = "Motion"
if a = 182 then Land = "Mountains"
if a = 183 then Land = "Mushrooms"
if a = 184 then Land = "Nails"
if a = 185 then Land = "Neon"
if a = 186 then Land = "Nickel"
if a = 187 then Land = "Night"
if a = 188 then Land = "Noir"
if a = 189 then Land = "Noise"
if a = 190 then Land = "Oases"
if a = 191 then Land = "Obsidian"
if a = 192 then Land = "Odors"
if a = 193 then Land = "Oil"
if a = 194 then Land = "Opposites"
if a = 195 then Land = "Orchard"
if a = 196 then Land = "Ore"
if a = 197 then Land = "Paper"
if a = 198 then Land = "Paths"
if a = 199 then Land = "Pipes"
if a = 200 then Land = "Pistons"
if a = 201 then Land = "Plains"
if a = 202 then Land = "Plastic"
if a = 203 then Land = "Platforms"
if a = 204 then Land = "Pluck"
if a = 205 then Land = "Pollution"
if a = 206 then Land = "Portals"
if a = 207 then Land = "Powder"
if a = 208 then Land = "Prairie"
if a = 209 then Land = "Precipice"
if a = 210 then Land = "Presence"
if a = 211 then Land = "Presents"
if a = 212 then Land = "Prisms"
if a = 213 then Land = "Pulse"
if a = 214 then Land = "Pumpkins"
if a = 215 then Land = "Pyramids"
if a = 216 then Land = "Quakes"
if a = 217 then Land = "Quarry"
if a = 218 then Land = "Quartz"
if a = 219 then Land = "Rain"
if a = 220 then Land = "Rainbows"
if a = 221 then Land = "Ramps"
if a = 222 then Land = "Rays"
if a = 223 then Land = "Rebirth"
if a = 224 then Land = "Reflection"
if a = 225 then Land = "Regret"
if a = 226 then Land = "Repetition"
if a = 227 then Land = "Reversal"
if a = 228 then Land = "Rhythm"
if a = 229 then Land = "Rhyme"
if a = 230 then Land = "Rime"
if a = 231 then Land = "Rip"
if a = 232 then Land = "Rivers"
if a = 233 then Land = "Rock"
if a = 234 then Land = "Roses"
if a = 235 then Land = "Rot"
if a = 236 then Land = "Rubber"
if a = 237 then Land = "Rust"
if a = 238 then Land = "Sadness"
if a = 239 then Land = "Sand"
if a = 240 then Land = "Savannah"
if a = 241 then Land = "Scales"
if a = 242 then Land = "Science"
if a = 243 then Land = "Sentience"
if a = 244 then Land = "Shade"
if a = 245 then Land = "Shadow"
if a = 246 then Land = "Shattering"
if a = 247 then Land = "Shores"
if a = 248 then Land = "Shrines"
if a = 249 then Land = "Shrouds"
if a = 250 then Land = "Silence"
if a = 251 then Land = "Silhouette"
if a = 252 then Land = "Silk"
if a = 253 then Land = "Silt"
if a = 254 then Land = "Silver"
if a = 255 then Land = "Singe"
if a = 256 then Land = "Sketch"
if a = 257 then Land = "Skin"
if a = 258 then Land = "Sky"
if a = 259 then Land = "Slate"
if a = 260 then Land = "Slime"
if a = 261 then Land = "Sluice"
if a = 262 then Land = "Slumber"
if a = 263 then Land = "Snakes"
if a = 264 then Land = "Snow"
if a = 265 then Land = "Solace"
if a = 266 then Land = "Song"
if a = 267 then Land = "Spheres"
if a = 268 then Land = "Spices"
if a = 269 then Land = "Spikes"
if a = 270 then Land = "Spires"
if a = 271 then Land = "Sponge"
if a = 272 then Land = "Springs"
if a = 273 then Land = "Stability"
if a = 274 then Land = "Stairs"
if a = 275 then Land = "Static"
if a = 276 then Land = "Steam"
if a = 277 then Land = "Steel"
if a = 278 then Land = "Steppe"
if a = 279 then Land = "Storm"
if a = 280 then Land = "Strings"
if a = 281 then Land = "Stumps"
if a = 282 then Land = "Subway"
if a = 283 then Land = "Suction"
if a = 284 then Land = "Sulfur"
if a = 285 then Land = "Surprise"
if a = 286 then Land = "Swamp"
if a = 287 then Land = "Sweets"
if a = 288 then Land = "Tea"
if a = 289 then Land = "Teeth"
if a = 290 then Land = "Temples"
if a = 291 then Land = "Tents"
if a = 292 then Land = "Terror"
if a = 293 then Land = "Thorns"
if a = 294 then Land = "Thought"
if a = 295 then Land = "Thunder"
if a = 296 then Land = "Tin"
if a = 297 then Land = "Tinsel"
if a = 298 then Land = "Topiary"
if a = 299 then Land = "Trance"
if a = 300 then Land = "Tranquility"
if a = 301 then Land = "Transit"
if a = 302 then Land = "Traps"
if a = 303 then Land = "Travel"
if a = 304 then Land = "Treasure"
if a = 305 then Land = "Trove"
if a = 306 then Land = "Tundra"
if a = 307 then Land = "Tunnel"
if a = 308 then Land = "Turmoil"
if a = 309 then Land = "Twilight"
if a = 310 then Land = "Ultraviolence"
if a = 311 then Land = "Undead"
if a = 312 then Land = "Urns"
if a = 313 then Land = "Vacuum"
if a = 314 then Land = "Vapor"
if a = 315 then Land = "Variety"
if a = 316 then Land = "Veil"
if a = 317 then Land = "Velvet"
if a = 318 then Land = "Vibration"
if a = 319 then Land = "Vines"
if a = 320 then Land = "Walls"
if a = 321 then Land = "War"
if a = 322 then Land = "Warmth"
if a = 323 then Land = "Wasteland"
if a = 324 then Land = "Water"
if a = 325 then Land = "Waterfalls"
if a = 326 then Land = "Waves"
if a = 327 then Land = "Wax"
if a = 328 then Land = "Wheat"
if a = 329 then Land = "Wilderness"
if a = 330 then Land = "Wind"
if a = 331 then Land = "Windows"
if a = 332 then Land = "Womb"
if a = 333 then Land = "Wood"
if a = 334 then Land = "Wrath"
if a = 335 then Land = "Xenon"
if a = 336 then Land = "Yarn"
if a = 337 then Land = "Yore"
if a = 338 then Land = "Zen"
if a = 339 then Land = "Zephyr"
end sub

Sub FindElement()
TryElementAgain:
Randomize
a = Int(Rnd * 141) + 1
if a = 1 then Element = "Fire"
if a = 2 then Element = "Water"
if a = 3 then Element = "Air"
if a = 4 then Element = "Earth"
if a = 5 then Element = "Metal"
if a = 6 then Element = "Wood"
if a = 7 then Element = "Aether"
if a = 8 then Element = "Hydrogen"
if a = 9 then Element = "Helium"
if a = 10 then Element = "Lithium"
if a = 11 then Element = "Palladium"
if a = 12 then Element = "Boron"
if a = 13 then Element = "Carbon"
if a = 14 then Element = "Nitrogen"
if a = 15 then Element = "Oxygen"
if a = 16 then Element = "Fluorine"
if a = 17 then Element = "Neon"
if a = 18 then Element = "Sodium"
if a = 19 then Element = "Magnesium"
if a = 20 then Element = "Aluminum"
if a = 21 then Element = "Silicon"
if a = 22 then Element = "Phosphorus"
if a = 23 then Element = "Sulfur"
if a = 24 then Element = "Chlorine"
if a = 25 then Element = "Argon"
if a = 26 then Element = "Potassium"
if a = 27 then Element = "Calcium"
if a = 28 then Element = "Silver"
if a = 29 then Element = "Titanium"
if a = 30 then Element = "Tin"
if a = 31 then Element = "Chromium"
if a = 32 then Element = "Antimony"
if a = 33 then Element = "Iron"
if a = 34 then Element = "Cobalt"
if a = 35 then Element = "Nickel"
if a = 36 then Element = "Copper"
if a = 37 then Element = "Zinc"
if a = 38 then Element = "Iodine"
if a = 39 then Element = "Xenon"
if a = 40 then Element = "Arsenic"
if a = 41 then Element = "Neodymium"
if a = 42 then Element = "Bromine"
if a = 43 then Element = "Krypton"
if a = 44 then Element = "Tungsten"
if a = 45 then Element = "Iridium"
if a = 46 then Element = "Yttrium"
if a = 47 then Element = "Zirconium"
if a = 48 then Element = "Vespene"
if a = 49 then Element = "Platinum"
if a = 50 then Element = "Gold"
if a = 51 then Element = "Mercury"
if a = 52 then Element = "Lead"
if a = 53 then Element = "Bismuth"
if a = 54 then Element = "Radon"
if a = 55 then Element = "Radium"
if a = 56 then Element = "Uranium"
if a = 57 then Element = "Ununseptium"
if a = 58 then Element = "Yin"
if a = 59 then Element = "Yang"
if a = 60 then Element = "Sky"
if a = 61 then Element = "Hot"
if a = 62 then Element = "Wet"
if a = 63 then Element = "Cold"
if a = 64 then Element = "Dry"
if a = 65 then Element = "Quintessence"
if a = 66 then Element = "Stars"
if a = 67 then Element = "Sanguine Humour"
if a = 68 then Element = "Choleric Humour"
if a = 69 then Element = "Melancholic Humour"
if a = 70 then Element = "Phlegmatic Humour"
if a = 71 then Element = "Void"
if a = 72 then Element = "Mud"
if a = 73 then Element = "Light"
if a = 74 then Element = "Dark"
if a = 75 then Element = "Sound"
if a = 76 then Element = "Lightning"
if a = 77 then Element = "Steam"
if a = 78 then Element = "Oil"
if a = 79 then Element = "Coal"
if a = 80 then Element = "Ash"
if a = 81 then Element = "Dust"
if a = 82 then Element = "Beast"
if a = 83 then Element = "Milk"
if a = 84 then Element = "Wheat"
if a = 85 then Element = "Concrete"
if a = 86 then Element = "Brick"
if a = 87 then Element = "Cement"
if a = 88 then Element = "Paper"
if a = 89 then Element = "Textile"
if a = 90 then Element = "Ceramic"
if a = 91 then Element = "Death"
if a = 92 then Element = "Glass"
if a = 93 then Element = "Clay"
if a = 94 then Element = "Stone"
if a = 95 then Element = "Sand"
if a = 96 then Element = "Alcohol"
if a = 97 then Element = "Coffee"
if a = 98 then Element = "Chocolate"
if a = 99 then Element = "Cookie"
if a = 101 then Element = "Sun"
if a = 102 then Element = "Ice"
if a = 103 then Element = "Radiance"
if a = 104 then Element = "Salt"
if a = 105 then Element = "Sugar"
if a = 106 then Element = "Chaos"
if a = 107 then Element = "Order"
if a = 108 then Element = "Death"
if a = 109 then Element = "Adamantite"
if a = 110 then Element = "Mithril"
if a = 111 then Element = "Smoke"
if a = 112 then Element = "Magma"
if a = 113 then Element = "Ooze"
if a = 114 then Element = "Dust"
if a = 115 then Element = "Frost"
if a = 116 then Element = "Pumice"
if a = 117 then Element = "Fumes"
if a = 118 then Element = "Crystal"
if a = 119 then Element = "Obsidian"
if a = 120 then Element = "Spark"
if a = 121 then Element = "Mineral"
if a = 122 then Element = "Silt"
if a = 123 then Element = "Plastic"
if a = 124 then Element = "Polymer"
if a = 125 then Element = "Silk"
if a = 125 then Element = "Orange Creamsicle"
if a = 126 then Element = "Shale"
if a = 127 then Element = "Chalk"
if a = 128 then Element = "Marble"
if a = 129 then Element = "Amber"
if a = 130 then Element = "Rust"
if a = 131 then Element = "Ruby"
if a = 132 then Element = "Garnet"
if a = 133 then Element = "Quartz"
if a = 134 then Element = "Diamond"
if a = 135 then Element = "Caulk"
if a = 136 then Element = "Amethyst"
if a = 137 then Element = "Redstone"
if a = 138 then Element = "Pearl"
if a = 139 then Element = "Lapis"
if a = 140 then Element = "Pumpkin"
if a = 141 then Element = "Dragon"


end sub

Sub FindConsortQuirk()
TryConsortQuirkAgain:
Randomize
a = Int(Rnd * 30) + 1
if a = 1 then ConsortQuirk = "arrogant"
if a = 2 then ConsortQuirk = "awesome"
if a = 3 then ConsortQuirk = "depressed"
if a = 4 then ConsortQuirk = "easily distracted"
if a = 5 then ConsortQuirk = "eccentric"
if a = 6 then ConsortQuirk = "gullible"
if a = 7 then ConsortQuirk = "hyperactive"
if a = 8 then ConsortQuirk = "insulting"
if a = 9 then ConsortQuirk = "irrational"
if a = 10 then ConsortQuirk = "joyful"
if a = 11 then ConsortQuirk = "lazy"
if a = 12 then ConsortQuirk = "mysterious"
if a = 13 then ConsortQuirk = "compulsively lying"
if a = 14 then ConsortQuirk = "shy"
if a = 15 then ConsortQuirk = "stupid"
if a = 16 then ConsortQuirk = "violent"
if a = 17 then ConsortQuirk = "warlike"
if a = 18 then ConsortQuirk = "weird"
if a = 19 then ConsortQuirk = "naive"
if a = 20 then ConsortQuirk = "timid"
if a = 21 then ConsortQuirk = "rambunctious"
if a = 22 then ConsortQuirk = "swindling"
if a = 23 then ConsortQuirk = "helpful"
if a = 24 then ConsortQuirk = "coolkid"
if a = 25 then ConsortQuirk = "brazen"
if a = 26 then ConsortQuirk = "neurotic"
if a = 27 then ConsortQuirk = "impressionable"
if a = 28 then ConsortQuirk = "blithe"
if a = 29 then ConsortQuirk = "forgetful"
if a = 30 then ConsortQuirk = "uncoordinated"
end sub

Sub FindConsortColor()
TryConsortColorAgain:
Randomize
a = Int(Rnd * 36) + 1
if a = 1 then ConsortColor = "black"
if a = 2 then ConsortColor = "blue"
if a = 3 then ConsortColor = "fuschia"
if a = 4 then ConsortColor = "gold"
if a = 5 then ConsortColor = "green"
if a = 6 then ConsortColor = "hot pink"
if a = 7 then ConsortColor = "indigo"
if a = 8 then ConsortColor = "lavender"
if a = 9 then ConsortColor = "midnight blue"
if a = 10 then ConsortColor = "multi-colored"
if a = 11 then ConsortColor = "olive green"
if a = 12 then ConsortColor = "orange"
if a = 13 then ConsortColor = "pearl white"
if a = 14 then ConsortColor = "pink"
if a = 15 then ConsortColor = "red"
if a = 16 then ConsortColor = "silver"
if a = 17 then ConsortColor = "sky blue"
if a = 18 then ConsortColor = "steel grey"
if a = 19 then ConsortColor = "teal"
if a = 20 then ConsortColor = "violet"
if a = 21 then ConsortColor = "whatpumpkin orange"
if a = 22 then ConsortColor = "white"
if a = 23 then ConsortColor = "yellow"
if a = 24 then ConsortColor = "forest green"
if a = 25 then ConsortColor = "translucent"
if a = 26 then ConsortColor = "vermillion"
if a = 27 then ConsortColor = "turquoise"
if a = 28 then ConsortColor = "cerulean"
if a = 29 then ConsortColor = "rainbow"
if a = 30 then ConsortColor = "cyan"
if a = 31 then ConsortColor = "magenta"
if a = 32 then ConsortColor = "mustard yellow"
if a = 33 then ConsortColor = "neon yellow"
if a = 34 then ConsortColor = "brown"
if a = 35 then ConsortColor = "beige"
if a = 36 then ConsortColor = "octarine"
end sub

Sub FindConsortType()
TryConsortTypeAgain:
Randomize
a = Int(Rnd * 78) + 1
if a = 1 then ConsortType = "alligators"
if a = 2 then ConsortType = "anglerfish"
if a = 3 then ConsortType = "ants"
if a = 4 then ConsortType = "naked molerats"
if a = 5 then ConsortType = "axolotls"
if a = 6 then ConsortType = "bears"
if a = 7 then ConsortType = "bats"
if a = 8 then ConsortType = "bluebirds"
if a = 9 then ConsortType = "canaries"
if a = 10 then ConsortType = "cats"
if a = 11 then ConsortType = "cougars"
if a = 12 then ConsortType = "crocodiles"
if a = 13 then ConsortType = "dogs"
if a = 14 then ConsortType = "dolphins"
if a = 15 then ConsortType = "doves"
if a = 16 then ConsortType = "dragons"
if a = 17 then ConsortType = "dugons"
if a = 18 then ConsortType = "elephants"
if a = 19 then ConsortType = "ferrets"
if a = 20 then ConsortType = "foxes"
if a = 21 then ConsortType = "gargoyles"
if a = 22 then ConsortType = "giraffes"
if a = 23 then ConsortType = "hamsters"
if a = 24 then ConsortType = "humanimals"
if a = 25 then ConsortType = "iguanas"
if a = 26 then ConsortType = "kangaroos"
if a = 27 then ConsortType = "lions"
if a = 28 then ConsortType = "manatees"
if a = 29 then ConsortType = "manticores"
if a = 30 then ConsortType = "mice"
if a = 31 then ConsortType = "minx"
if a = 32 then ConsortType = "monkeys"
if a = 33 then ConsortType = "otters"
if a = 34 then ConsortType = "owls"
if a = 35 then ConsortType = "pandas"
if a = 36 then ConsortType = "panthers"
if a = 37 then ConsortType = "parrots"
if a = 38 then ConsortType = "penguins"
if a = 39 then ConsortType = "pigs"
if a = 40 then ConsortType = "ponies"
if a = 41 then ConsortType = "pterodactyls"
if a = 42 then ConsortType = "rats"
if a = 43 then ConsortType = "rhinos"
if a = 44 then ConsortType = "salamanders"
if a = 45 then ConsortType = "seagulls"
if a = 46 then ConsortType = "sharks"
if a = 47 then ConsortType = "snakes"
if a = 48 then ConsortType = "squids"
if a = 49 then ConsortType = "tigers"
if a = 50 then ConsortType = "toucans"
if a = 51 then ConsortType = "unicorns"
if a = 52 then ConsortType = "velociraptors"
if a = 53 then ConsortType = "vultures"
if a = 54 then ConsortType = "walruses"
if a = 55 then ConsortType = "whales"
if a = 56 then ConsortType = "wolves"
if a = 57 then ConsortType = "pandas"
if a = 58 then ConsortType = "hawks"
if a = 59 then ConsortType = "geckos"
if a = 60 then ConsortType = "lemurs"
if a = 61 then ConsortType = "chameleons"
if a = 62 then ConsortType = "chickens"
if a = 63 then ConsortType = "rabbits"
if a = 64 then ConsortType = "weasels"
if a = 65 then ConsortType = "griffons"
if a = 66 then ConsortType = "badgers"
if a = 67 then ConsortType = "snakes"
if a = 68 then ConsortType = "beavers"
if a = 69 then ConsortType = "cranes"
if a = 70 then ConsortType = "skunks"
if a = 71 then ConsortType = "hippos"
if a = 72 then ConsortType = "turtles"
if a = 73 then ConsortType = "sheep"
if a = 74 then ConsortType = "raccoons"
if a = 75 then ConsortType = "ducks"
if a = 76 then ConsortType = "moose"
if a = 77 then ConsortType = "cows"
if a = 78 then ConsortType = "camels"
end sub

Sub FindConsortLike()
TryConsortLikeAgain:
Randomize
a = Int(Rnd * 25) + 1
if a = 1 then ConsortLike = "architecture"
if a = 2 then ConsortLike = "art"
if a = 3 then ConsortLike = "beauty"
if a = 4 then ConsortLike = "friendship"
if a = 5 then ConsortLike = "gadgetry"
if a = 6 then ConsortLike = "knowledge"
if a = 7 then ConsortLike = "magic"
if a = 8 then ConsortLike = "mining"
if a = 9 then ConsortLike = "money"
if a = 10 then ConsortLike = "nature"
if a = 11 then ConsortLike = "politics"
if a = 12 then ConsortLike = "power"
if a = 13 then ConsortLike = "skateboarding"
if a = 14 then ConsortLike = "stories"
if a = 15 then ConsortLike = "tomfoolery"
if a = 16 then ConsortLike = "gemstones"
if a = 17 then ConsortLike = "science"
if a = 18 then ConsortLike = "exploration"
if a = 19 then ConsortLike = "adventure"
if a = 20 then ConsortLike = "agriculture"
if a = 21 then ConsortLike = "pranks"
if a = 22 then ConsortLike = "music"
if a = 23 then ConsortLike = "dancing"
if a = 24 then ConsortLike = "swimming"
if a = 25 then ConsortLike = "philosophy"
end sub



Sub FindInterest()
TryInterestAgain:
Randomize
a = Int(Rnd * 20) + 1
	if a = 1 then
		Interest = "Video Games"
			Randomize
			b = Int(Rnd * 12) + 1
				if b = 1 then InterestItem = "Metroid Prime"
				if b = 2 then InterestItem = "Mario Figurine"
				if b = 3 then InterestItem = "Minecraft"
				if b = 4 then InterestItem = "Castlevania"
				if b = 5 then InterestItem = "The Orange Box"
				if b = 6 then InterestItem = "Portal"
				if b = 7 then InterestItem = "Shitty Roguelike burned to CD"
				if b = 8 then InterestItem = "Sonic Plushtoy"
				if b = 9 then InterestItem = "Eversion"
				if b = 10 then InterestItem = "Princess Maker"
				if b = 11 then InterestItem = "Doom 95"
				if b = 12 then InterestItem = "Zelda"
	end if
	if a = 2 then
		Interest = "Cooking"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then InterestItem = "Saucepan"
				if b = 2 then InterestItem = "Hot Sauce"
				if b = 3 then InterestItem = "Cooking For Dummies"
				if b = 4 then InterestItem = "Toaster"
				if b = 5 then InterestItem = "Cooking Grease"
				if b = 6 then InterestItem = "Ice Cream"
'				if b = 7 then InterestItem = ""
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 3 then
		Interest = "Botany"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then InterestItem = "Fertilizer"
				if b = 2 then InterestItem = "Pumpkin"
				if b = 3 then InterestItem = "Amorphophallus Titanum"
				if b = 4 then InterestItem = "Venus Fly Trap"
				if b = 5 then InterestItem = "Tree Branch"
				if b = 6 then InterestItem = "Watering Can"
'				if b = 7 then InterestItem = ""
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 4 then
		Interest = "Art"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then InterestItem = "Paintbrush"
				if b = 2 then InterestItem = "Charcoal"
				if b = 3 then InterestItem = "Pencil"
				if b = 4 then InterestItem = "Creepy Figurine"
				if b = 5 then InterestItem = "MC Escher Picture"
				if b = 6 then InterestItem = "Giger Painting"
'				if b = 7 then InterestItem = ""
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 5 then
		Interest = "Grimdark Arts"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then InterestItem = "Summoning Grimoire"
				if b = 2 then InterestItem = "Vial of your own blood"
				if b = 3 then InterestItem = "Creepy Figurine"
				if b = 4 then InterestItem = "Lovecraftian Novel"
				if b = 5 then InterestItem = "Incense Holder"
				if b = 6 then InterestItem = "Ectoplasm"
'				if b = 7 then InterestItem = ""
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 6 then
		Interest = "Biology"
			Randomize
			b = Int(Rnd * 7) + 1
				if b = 1 then InterestItem = "Protein"
				if b = 2 then InterestItem = "Crab Claw"
				if b = 3 then InterestItem = "Genetic Horror"
				if b = 4 then InterestItem = "Hazardous Chemicals"
				if b = 5 then InterestItem = "Hologram of your own brain"
				if b = 6 then InterestItem = "Fetus in a jar"
				if b = 7 then InterestItem = "Taxidermied creature"
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 7 then
		Interest = "Collectibles"
			Randomize
			b = Int(Rnd * 9) + 1
				if b = 1 then InterestItem = "Sonic Screwdriver"
				if b = 2 then InterestItem = "Replica Lightsabre"
				if b = 3 then InterestItem = "Tardis"
				if b = 4 then InterestItem = "Dalek Figurine"
				if b = 5 then InterestItem = "Miniature Stargate"
				if b = 6 then InterestItem = "Spock Poster"
				if b = 7 then InterestItem = "Transformer Action Figure"
				if b = 8 then InterestItem = "Millenium Falcon"
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 8 then
		Interest = "Science"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then InterestItem = "Tesla Coil"
				if b = 2 then InterestItem = "Fusion Reactor"
				if b = 3 then InterestItem = "Newton's Cradle"
				if b = 4 then InterestItem = "Steampunk Novel"
				if b = 5 then InterestItem = "Carbon Nanotube"
				if b = 6 then InterestItem = "Vial of Mercury"
'				if b = 7 then InterestItem = ""
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 9 then
		Interest = "Geology"
			Randomize
			b = Int(Rnd * 7) + 1
				if b = 1 then InterestItem = "Obsidian Stone"
				if b = 2 then InterestItem = "Meteorite"
				if b = 3 then InterestItem = "Diamond"
				if b = 4 then InterestItem = "Geode"
				if b = 5 then InterestItem = "Gold Leaf"
				if b = 6 then InterestItem = "Interesting Stones"
				if b = 7 then InterestItem = "Archvillainy 101 Handbook"
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 10 then
		Interest = "Engineering"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then InterestItem = "Car Engine"
				if b = 2 then InterestItem = "Plane Replica"
				if b = 3 then InterestItem = "Car Battery"
				if b = 4 then InterestItem = "Model Skyscraper"
'				if b = 5 then InterestItem = ""
'				if b = 6 then InterestItem = ""
'				if b = 7 then InterestItem = ""
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 11 then
		Interest = "Frivolity"
			Randomize
			b = Int(Rnd * 12) + 1
				if b = 1 then InterestItem = "Wizard Hat"
				if b = 2 then InterestItem = "Can-of-worms"
				if b = 3 then InterestItem = "Creepy Doll"
				if b = 4 then InterestItem = "Trick Cards"
				if b = 5 then InterestItem = "Whoopie Cushion"
				if b = 6 then InterestItem = "Smoke Pellets"
				if b = 7 then InterestItem = "Fake Blood Capsules"
				if b = 8 then InterestItem = "Sassacre's Daunting Tome"
				if b = 9 then InterestItem = "Magician's Gloves"
				if b = 10 then InterestItem = "Clown Poster"
				if b = 11 then InterestItem = "Unicycle"
				if b = 12 then InterestItem = "Jack-in-the-Box"
	end if
	if a = 12 then
		Interest = "Archaeology"
			Randomize
			b = Int(Rnd * 7) + 1
				if b = 1 then InterestItem = "Suit of Armor"
				if b = 2 then InterestItem = "Mummy"
				if b = 3 then InterestItem = "Sarcophagus"
				if b = 4 then InterestItem = "Jade figurine"
				if b = 5 then InterestItem = "Indiana Jones Movie"
				if b = 6 then InterestItem = "Dragon Figurine"
				if b = 7 then InterestItem = "Toy Soldiers"
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 13 then
		Interest = "Literature"
			Randomize
			b = Int(Rnd * 3) + 1
				if b = 1 then InterestItem = "Midsummer Night's Dream"
				if b = 2 then InterestItem = "The Alchemist"
				if b = 3 then InterestItem = "Chinese Haikus of Little Historical Significance"
'				if b = 4 then InterestItem = ""
'				if b = 5 then InterestItem = ""
'				if b = 6 then InterestItem = ""
'				if b = 7 then InterestItem = ""
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 14 then
		Interest = "Immaturity"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then InterestItem = "Push-me Popper"
				if b = 2 then InterestItem = "Teddy Bear"
				if b = 3 then InterestItem = "Play Doh"
				if b = 4 then InterestItem = "Bouncy Ball"
'				if b = 5 then InterestItem = ""
'				if b = 6 then InterestItem = ""
'				if b = 7 then InterestItem = ""
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 15 then
		Interest = "Sports"
			Randomize
			b = Int(Rnd * 5) + 1
				if b = 1 then InterestItem = "Football"
				if b = 2 then InterestItem = "Baseball Glove"
				if b = 3 then InterestItem = "Hockey Stick"
				if b = 4 then InterestItem = "Tennis Racket"
				if b = 5 then InterestItem = "Soccer Ball"
'				if b = 6 then InterestItem = ""
'				if b = 7 then InterestItem = ""
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 16 then
		Interest = "Warfare"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then InterestItem = "Model Tank"
				if b = 2 then InterestItem = "Ghillie Suit"
				if b = 3 then InterestItem = "Night-vision Goggles"
				if b = 4 then InterestItem = "Empty Magazine"
'				if b = 5 then InterestItem = ""
'				if b = 6 then InterestItem = ""
'				if b = 7 then InterestItem = ""
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 17 then
		Interest = "Gambling"
			Randomize
			b = Int(Rnd * 3) + 1
				if b = 1 then InterestItem = "Playing Cards"
				if b = 2 then InterestItem = "Poker Chips"
				if b = 3 then InterestItem = "Roulette Wheel"
'				if b = 4 then InterestItem = ""
'				if b = 5 then InterestItem = ""
'				if b = 6 then InterestItem = ""
'				if b = 7 then InterestItem = ""
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 18 then
		Interest = "Knick Knacks"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then InterestItem = "Snow Globe"
				if b = 2 then InterestItem = "Lava Lamp"
				if b = 3 then InterestItem = "Miniature Eiffel Tower"
				if b = 4 then InterestItem = "Plasma Globe"
				if b = 5 then InterestItem = "Music Box"
				if b = 6 then InterestItem = "Fancy Santa"
'				if b = 7 then InterestItem = ""
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 19 then
		Interest = "Paleontology"
			Randomize
			b = Int(Rnd * 5) + 1
				if b = 1 then InterestItem = "Fossilized Dinosaur Skin"
				if b = 2 then InterestItem = "Preserved Amber"
				if b = 3 then InterestItem = "Ammonite Shell"
				if b = 4 then InterestItem = "T-Rex Tooth"
				if b = 5 then InterestItem = "Footprint Fossil"
'				if b = 6 then InterestItem = ""
'				if b = 7 then InterestItem = ""
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if
	if a = 20 then
		Interest = "Meta"
			Randomize
			b = Int(Rnd * 5) + 1
				if b = 1 then InterestItem = "SBaHJ Poster"
				if b = 2 then InterestItem = "Con-Air Bunny"
				if b = 3 then InterestItem = "Cool Horse Painting"
				if b = 4 then InterestItem = "Problem Sleuth Poster"
				if b = 5 then InterestItem = "Sepulchritude Shirt"
'				if b = 6 then InterestItem = ""
'				if b = 7 then InterestItem = ""
'				if b = 8 then InterestItem = ""
'				if b = 9 then InterestItem = ""
'				if b = 10 then InterestItem = ""
'				if b = 11 then InterestItem = ""
'				if b = 12 then InterestItem = ""
	end if

end sub


Sub FindStrifeSpecibus()
TryStrifeSpecibusAgain:
Randomize
a = Int(Rnd * 84) + 1
	if a = 1 then
		StrifeSpecibus = "bladeKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Bread Knife"
				if b = 2 then Weapon = "Sword"
				if b = 3 then Weapon = "Model Lightsaber"
				if b = 4 then Weapon = "Two Handed Sword"
				if b = 5 then Weapon = "Katana"
				if b = 6 then Weapon = "Helicopter Rotor"
	end if
	if a = 2 then
		StrifeSpecibus = "pistolKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Revolver"
				if b = 2 then Weapon = "SquirtGun"
				if b = 3 then Weapon = "Nerf Gun"
				if b = 4 then Weapon = "Uzi"
				if b = 5 then Weapon = "Flare Gun"
				if b = 6 then Weapon = "9mm"
	end if
	if a = 3 then
		StrifeSpecibus = "offcespplyKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Stapler"
				if b = 2 then Weapon = "Staple Gun"
				if b = 3 then Weapon = "Ruler"
				if b = 4 then Weapon = "Scissors"
				if b = 5 then Weapon = "3x5 cards"
				if b = 6 then Weapon = "Paper Cutter"
	end if
	if a = 4 then
		StrifeSpecibus = "gloveKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Knitted Gloves"
				if b = 2 then Weapon = "Boxing Gloves"
				if b = 3 then Weapon = "Brass Knuckles"
				if b = 4 then Weapon = "Silk Gloves"
				if b = 5 then Weapon = "Latex Gloves"
				if b = 6 then Weapon = "Gauntlets"
	end if
	if a = 5 then
		StrifeSpecibus = "axeKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Fire Axe"
				if b = 2 then Weapon = "Battle Axe"
				if b = 3 then Weapon = "Hatchet"
				if b = 4 then Weapon = "Bitchin Guitar"
	end if
	if a = 6 then
		StrifeSpecibus = "fncysntaKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Fancy Santa"
				if b = 2 then Weapon = "Very Fancy Santa"
				if b = 3 then Weapon = "VERY Fancy Santa"
				if b = 4 then Weapon = "Santa Figurine"
				if b = 5 then Weapon = "Christmas Ornament"
				if b = 6 then Weapon = "Garden Gnome"
	end if
	if a = 7 then
		StrifeSpecibus = "whipKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Dog Leash"
				if b = 2 then Weapon = "Wiimote"
				if b = 3 then Weapon = "1/2 bow"
				if b = 4 then Weapon = "Lasso"
				if b = 5 then Weapon = "Whip"
				if b = 6 then Weapon = "Leather Belt"
	end if
	if a = 8 then
		StrifeSpecibus = "hammerKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Hammer"
				if b = 2 then Weapon = "Sledgehammer"
				if b = 3 then Weapon = "War Hammer"
				if b = 4 then Weapon = "Claw Hammer"
				if b = 5 then Weapon = "Meat Tenderizer"
				if b = 6 then Weapon = "Smith's Hammer"
	end if
	if a = 9 then
		StrifeSpecibus = "clubKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Large Stick"
				if b = 2 then Weapon = "Baseball Bat"
				if b = 3 then Weapon = "Golf Club"
				if b = 4 then Weapon = "Night Stick"
				if b = 5 then Weapon = "Bowling Pin"
				if b = 6 then Weapon = "Juggling Clubs"
	end if
	if a = 10 then
		StrifeSpecibus = "clawKind"
			Randomize
			b = Int(Rnd * 3) + 1
				if b = 1 then Weapon = "Fake Fingernails"
				if b = 2 then Weapon = "Wolverine Claws"
				if b = 3 then Weapon = "Bagh Nakh"
	end if
	if a = 11 then
		StrifeSpecibus = "chainsawKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Chainsaw"
				if b = 2 then Weapon = "Chainsword"
				if b = 3 then Weapon = "Chainaxe"
				if b = 4 then Weapon = "Chainstaff"
	end if
	if a = 12 then
		StrifeSpecibus = "makeupKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Lipstick"
				if b = 2 then Weapon = "Eyeshadow Compact"
				if b = 3 then Weapon = "Perfume"
				if b = 4 then Weapon = "Facepaint"
	end if
	if a = 13 then
		StrifeSpecibus = "umbrellaKind"
            Weapon = "Umbrella"
	end if
	if a = 14 then
		StrifeSpecibus = "scytheKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Scythe"
				if b = 2 then Weapon = "Farming Scythe"
				if b = 3 then Weapon = "Hand-Scythe"
				if b = 4 then Weapon = "Sickle"
	end if
	if a = 15 then
		StrifeSpecibus = "spearKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Pointy Stick"
				if b = 2 then Weapon = "Spear"
				if b = 3 then Weapon = "Javelin"
				if b = 4 then Weapon = "Hawaiian Sling"
    end if
	if a = 16 then
		StrifeSpecibus = "needleKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Shitty Wand"
				if b = 2 then Weapon = "Knitting Needles"
				if b = 3 then Weapon = "Twig"
				if b = 4 then Weapon = "Crochet Needle"
				if b = 5 then Weapon = "Hypodermic Needle"
				if b = 6 then Weapon = "Recordplayer Needle"
	end if
	if a = 17 then
		StrifeSpecibus = "bowKind"
			Randomize
			b = Int(Rnd * 5) + 1
				if b = 1 then Weapon = "Long bow"
				if b = 2 then Weapon = "Short Bow"
				if b = 3 then Weapon = "Compound Bow"
				if b = 4 then Weapon = "Crossbow"
				if b = 5 then Weapon = "Fancy Silk Bow"
	end if
	if a = 18 then
		StrifeSpecibus = "diceKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Pop-o-Matic"
				if b = 2 then Weapon = "Yahtzee Dice"
				if b = 3 then Weapon = "8 8-sided Dice"
				if b = 4 then Weapon = "20-sided Die"
				if b = 5 then Weapon = "Brick of 6-sided Dice"
				if b = 6 then Weapon = "Lonely 12-sider"
	end if
	if a = 19 then
		StrifeSpecibus = "2x3dentKind"
			Randomize
			b = Int(Rnd * 3) + 1
				if b = 1 then Weapon = "Trident"
				if b = 2 then Weapon = "Fork"
				if b = 3 then Weapon = "Pitchfork"
	end if
	if a = 20 then
		StrifeSpecibus = "guitarKind"
			Randomize
			b = Int(Rnd * 5) + 1
				if b = 1 then Weapon = "Acoustic Guitar"
				if b = 2 then Weapon = "Electric Guitar"
				if b = 3 then Weapon = "12-String Guitar"
				if b = 4 then Weapon = "Ukelele"
				if b = 5 then Weapon = "Bitchin' Axe"
	end if
	if a = 21 then
		StrifeSpecibus = "knifeKind"
			Randomize
			b = Int(Rnd * 5) + 1
				if b = 1 then Weapon = "Steak Knife"
				if b = 2 then Weapon = "Pocket Knife"
				if b = 3 then Weapon = "Dagger"
				if b = 4 then Weapon = "Kukri"
				if b = 5 then Weapon = "Sai"
	end if
	if a = 22 then
		StrifeSpecibus = "grenadeKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Frag Grenades"
				if b = 2 then Weapon = "Smoke Grenades"
				if b = 3 then Weapon = "Flash Grenades"
				if b = 4 then Weapon = "Molotov Cocktails"
	end if
	if a = 23 then
		StrifeSpecibus = "staffKind"
			Randomize
			b = Int(Rnd * 3) + 1
				if b = 1 then Weapon = "Pool Cue"
				if b = 2 then Weapon = "Bo Staff"
				if b = 3 then Weapon = "Quarterstaff"
	end if
	if a = 24 then
		StrifeSpecibus = "rifleKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Paintball Gun"
				if b = 2 then Weapon = "Machine Gun"
				if b = 3 then Weapon = "Shotgun"
				if b = 4 then Weapon = "Sniper Rifle"
				if b = 5 then Weapon = "Musket"
				if b = 6 then Weapon = "Harpoon Gun"
	end if
	if a = 25 then
		StrifeSpecibus = "maceKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Mace"
				if b = 2 then Weapon = "Flail"
				if b = 3 then Weapon = "Morning Star"
				if b = 4 then Weapon = "Nunchucks"
	end if
	if a = 26 then
		StrifeSpecibus = "explosivesKind"
			Randomize
			b = Int(Rnd * 5) + 1
				if b = 1 then Weapon = "Confetti Poppers"
				if b = 2 then Weapon = "Fireworks"
				if b = 3 then Weapon = "Dynamite"
				if b = 4 then Weapon = "C4"
				if b = 5 then Weapon = "Claymores"
	end if
	if a = 27 then
		StrifeSpecibus = "projectileKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Darts"
				if b = 2 then Weapon = "Throwing Knives"
				if b = 3 then Weapon = "Shuriken"
				if b = 4 then Weapon = "Kunai"
				if b = 5 then Weapon = "Pencils"
				if b = 6 then Weapon = "Folded Paper Triangles"
	end if
	if a = 28 then
		StrifeSpecibus = "wrenchKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Crescent Wrench"
				if b = 2 then Weapon = "Pipe Wrench"
				if b = 3 then Weapon = "Monkey Wrench"
				if b = 4 then Weapon = "Socket Wrench"
	end if
	if a = 29 then
		StrifeSpecibus = "screwdriverKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Flathead Screwdriver"
				if b = 2 then Weapon = "Phillips Screwdriver"
				if b = 3 then Weapon = "Electric Screwdriver"
				if b = 4 then Weapon = "Sonic Screwdriver toy"
	end if
	if a = 30 then
		StrifeSpecibus = "pizzactrKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Pizza Cutter"
				if b = 2 then Weapon = "Rotary Fabric Shears"
				if b = 3 then Weapon = "Strange Dremel Attatchment"
				if b = 4 then Weapon = "Boxcutter"
				if b = 5 then Weapon = "Laser-Guided Pizza Cutter"
				if b = 6 then Weapon = "Rotary Knife"
	end if
	if a = 31 then
		StrifeSpecibus = "batKind"
			Randomize
			b = Int(Rnd * 5) + 1
				if b = 1 then Weapon = "Taxidermied Bat"
				if b = 2 then Weapon = "Wooden Bat"
				if b = 3 then Weapon = "Aluminum Bat"
				if b = 4 then Weapon = "Vampire Bat"
				if b = 5 then Weapon = "Board With A Nail In It"
				
	end if
	if a = 32 then
		StrifeSpecibus = "rollpinKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Wooden Rolling Pin"
				if b = 2 then Weapon = "Silicon-coated Rolling Pin"
				if b = 3 then Weapon = "Glass Rolling Pin"
				if b = 4 then Weapon = "Plastic Rolling Pin"
	end if
	if a = 33 then
		StrifeSpecibus = "yoyoKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Shitty Yoyo"
				if b = 2 then Weapon = "Pro-Quality Yoyo"
				if b = 3 then Weapon = "Light-up Yoyo"
				if b = 4 then Weapon = "Bobbin on a string"
				if b = 5 then Weapon = "Stargate Commemorative Yoyo"
				if b = 6 then Weapon = "Dale Earnheart Commemorative Yoyo"
	end if
	if a = 34 then
		StrifeSpecibus = "scissorKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Gardening Shears"
				if b = 2 then Weapon = "Shepherd's Shears"
				if b = 3 then Weapon = "Child-safe Scissors"
				if b = 4 then Weapon = "Kitchen Scissors"
				if b = 5 then Weapon = "Frighteningly Rusty Scissors"
				if b = 6 then Weapon = "1/2 Scissor"
	end if
	if a = 35 then
		StrifeSpecibus = "peprspryKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Pepper Spray"
				if b = 2 then Weapon = "Child-safe Pepper Spray"
				if b = 3 then Weapon = "Minty Fresh Pepper Spray"
				if b = 4 then Weapon = "Jalapeno Pepper Spray"
				if b = 5 then Weapon = "Salt And Pepper Spray"
				if b = 6 then Weapon = "Restraining Order Pepper Spray"
	end if
	if a = 36 then
		StrifeSpecibus = "crowbarKind"
			Randomize
			b = Int(Rnd * 5) + 1
				if b = 1 then Weapon = "Crowbar"
				if b = 2 then Weapon = "Bent stick"
				if b = 3 then Weapon = "Hockey Stick"
				if b = 4 then Weapon = "Bent Metal Pipe"
				if b = 5 then Weapon = "Bent GolfClub"
	end if
	if a = 37 then
		StrifeSpecibus = "broomKind"
			Randomize
			b = Int(Rnd * 3) + 1
				if b = 1 then Weapon = "Pushbroom"
				if b = 2 then Weapon = "Swiffer Sweeper"
				if b = 3 then Weapon = "Plain Broom"
	end if
	if a = 38 then
		StrifeSpecibus = "pokerKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Cast Iron Poker"
				if b = 2 then Weapon = "Silver Gilt Poker"
				if b = 3 then Weapon = "Filigreed Poker"
				if b = 4 then Weapon = "Slightly Burnt Stick"
				if b = 5 then Weapon = "Crowbar"
				if b = 6 then Weapon = "Metal Pipe"
	end if
	if a = 39 then
		StrifeSpecibus = "icepickKind"
			Randomize
			b = Int(Rnd * 3) + 1
				if b = 1 then Weapon = "Ice Pick"
				if b = 2 then Weapon = "Rock Hammer"
				if b = 3 then Weapon = "Miner's Pick"
	end if
	if a = 40 then
		StrifeSpecibus = "golfclubKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Wedge"
				if b = 2 then Weapon = "9-Iron"
				if b = 3 then Weapon = "Driver"
				if b = 4 then Weapon = "Putter"
	end if
	if a = 41 then
		StrifeSpecibus = "ropeKind"
			Randomize
			b = Int(Rnd * 3) + 1
				if b = 1 then Weapon = "Climber's Rope"
				if b = 2 then Weapon = "Frayed Hemp Rope"
				if b = 3 then Weapon = "Silk Rope"
	end if
	if a = 42 then
		StrifeSpecibus = "shovelKind"
			Randomize
			b = Int(Rnd * 5) + 1
				if b = 1 then Weapon = "Plain Shovel"
				if b = 2 then Weapon = "Foldable Camp Shovel"
				if b = 3 then Weapon = "Large Spade"
				if b = 4 then Weapon = "Garden Trowel"
				if b = 5 then Weapon = "Mason's Spade"
	end if
	if a = 43 then
		StrifeSpecibus = "spoonKind"
			Randomize
			b = Int(Rnd * 5) + 1
				if b = 1 then Weapon = "Wooden Spoon"
				if b = 2 then Weapon = "Silver Spoon"
				if b = 3 then Weapon = "Stirring Spoon"
				if b = 4 then Weapon = "Soup Spoon"
				if b = 5 then Weapon = "Tea Spoon"
	end if
	if a = 44 then
		StrifeSpecibus = "statueKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Anime Figurine"
				if b = 2 then Weapon = "Wizard Statue"
				if b = 3 then Weapon = "Fancy Santa"
				if b = 4 then Weapon = "Dragon Figurine"
				if b = 5 then Weapon = "Garden Gnome"
				if b = 6 then Weapon = "Precious Moments"
	end if
	if a = 45 then
		StrifeSpecibus = "spatulaKind"
			Randomize
			b = Int(Rnd * 2) + 1
				if b = 1 then Weapon = "Shitty Dollarstore Spatula"
				if b = 2 then Weapon = "Silicone Spatula"
	end if
	if a = 46 then
		StrifeSpecibus = "lampKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Lava Lamp"
				if b = 2 then Weapon = "Lampshade"
				if b = 3 then Weapon = "Electric Lamp"
				if b = 4 then Weapon = "Antique Oil Lamp"
	end if
	if a = 47 then
		StrifeSpecibus = "ballKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Soccer Ball"
				if b = 2 then Weapon = "Baseball"
				if b = 3 then Weapon = "Basketball"
				if b = 4 then Weapon = "Bowling Ball"
				if b = 5 then Weapon = "Ball Bearings"
				if b = 6 then Weapon = "Watermelon"
	end if
	if a = 48 then
		StrifeSpecibus = "rakeKind"
				Weapon = "Garden Rake"
	end if
	if a = 49 then
		StrifeSpecibus = "plankKind"
			Randomize
			b = Int(Rnd * 2) + 1
				if b = 1 then Weapon = "Board with Nail In It"
				if b = 2 then Weapon = "Wooden Board"
	end if
	if a = 50 then
		StrifeSpecibus = "forkKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Salad Fork"
				if b = 2 then Weapon = "Dinner Fork"
				if b = 3 then Weapon = "Bent Fork"
				if b = 4 then Weapon = "Two-pronged For"
	end if
	if a = 51 then
		StrifeSpecibus = "caneKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Walking Stick"
				if b = 2 then Weapon = "Classy Cane"
				if b = 3 then Weapon = "Canesword"
				if b = 4 then Weapon = "Broken Cane"
				if b = 5 then Weapon = "Tapdancing Cane"
				if b = 6 then Weapon = "Cheerleader Baton"
	end if
	if a = 52 then
		StrifeSpecibus = "chainKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Thick Metal Chain"
				if b = 2 then Weapon = "Jewelry Chain"
				if b = 3 then Weapon = "Plastic Chain"
				if b = 4 then Weapon = "Rope"
	end if
	if a = 53 then
		StrifeSpecibus = "tablelegKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Plain Wooden Table Leg"
				if b = 2 then Weapon = "Aluminum Table Leg"
				if b = 3 then Weapon = "Incredibly Ornate Table Leg"
				if b = 4 then Weapon = "Metal Chair Leg"
				if b = 5 then Weapon = "Plastic Table Leg"
				if b = 6 then Weapon = "Office Chair Base"
	end if
	if a = 54 then
		StrifeSpecibus = "peprmillKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Pepper Mill"
				if b = 2 then Weapon = "Salt Shaker"
				if b = 3 then Weapon = "Garlic Mill"
				if b = 4 then Weapon = "Coffee Grinder"
				if b = 5 then Weapon = "Electric Coffeegrinder"
				if b = 6 then Weapon = "Mortar and Pestle"
	end if
	if a = 55 then
		StrifeSpecibus = "hckystckKind"
			Randomize
			b = Int(Rnd * 2) + 1
				if b = 1 then Weapon = "Hockey Stick"
				if b = 2 then Weapon = "Hockey Stick"
	end if
	if a = 56 then
		StrifeSpecibus = "vacuumKind"
			Randomize
			b = Int(Rnd * 3) + 1
				if b = 1 then Weapon = "Hand Vacuum"
				if b = 2 then Weapon = "Standing Vacuum"
				if b = 3 then Weapon = "Antique Vacuum"
	end if
	if a = 57 then
		StrifeSpecibus = "mopKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Mop"
				if b = 2 then Weapon = "Mop"
	end if
	if a = 58 then
		StrifeSpecibus = "trophyKind"
			Randomize
			b = Int(Rnd * 2) + 1
				if b = 1 then Weapon = "Bowling Trophy"
				if b = 2 then Weapon = "Golfing Trophy"
	end if
	if a = 59 then
		StrifeSpecibus = "ladleKind"
			Randomize
			b = Int(Rnd * 2) + 1
				if b = 1 then Weapon = "Soup Ladle"
				if b = 2 then Weapon = "Shitty Soup Ladle"
	end if
	if a = 60 then
		StrifeSpecibus = "cordKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "TV Cord"
				if b = 2 then Weapon = "Extension Cord"
				if b = 3 then Weapon = "Shoelace"
				if b = 4 then Weapon = "Climbing Rope"
				if b = 5 then Weapon = "Headphone Cord"
				if b = 6 then Weapon = "Power Cord"
	end if
	if a = 61 then
		StrifeSpecibus = "sawKind"
			Randomize
			b = Int(Rnd * 2) + 1
				if b = 1 then Weapon = "Large Metal Saw"
				if b = 2 then Weapon = "Electric Saw"
	end if
	if a = 62 then
		StrifeSpecibus = "cleaverKind"
			Randomize
			b = Int(Rnd * 3) + 1
				if b = 1 then Weapon = "Clever"
				if b = 2 then Weapon = "Rusty Old Cleaver"
				if b = 3 then Weapon = "Antique Chinese Cleaver"
	end if
	if a = 63 then
		StrifeSpecibus = "iceskateKind"
			Randomize
			b = Int(Rnd * 2) + 1
				if b = 1 then Weapon = "Shitty Iceskates"
				if b = 2 then Weapon = "Iceskates"
	end if
	if a = 64 then
		StrifeSpecibus = "bookKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Large Medical Tome"
				if b = 2 then Weapon = "Unabridged Dictionary"
				if b = 3 then Weapon = "Sassacre's Daunting Tome"
				if b = 4 then Weapon = "Encyclopedia"
	end if
	if a = 65 then
		StrifeSpecibus = "bustKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Ben Stiller Bust"
				if b = 2 then Weapon = "Bust of a Greek Muse"
				if b = 3 then Weapon = "Snoop Dogg Bust"
				if b = 4 then Weapon = "Disney Villain Bust"
				if b = 5 then Weapon = "Einstein Bust"
				if b = 6 then Weapon = "Beethoven Bust"
	end if
	if a = 66 then
		StrifeSpecibus = "pipeKind"
			Randomize
			b = Int(Rnd * 2) + 1
				if b = 1 then Weapon = "Lead Pipe"
				if b = 2 then Weapon = "PVC Pipe"
	end if
	if a = 67 then
		StrifeSpecibus = "tongsKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Salad Tongs"
				if b = 2 then Weapon = "Smith's Tongs"
				if b = 3 then Weapon = "Pliers"
				if b = 4 then Weapon = "Frightening Dentistry Tool"
	end if
	if a = 68 then
		StrifeSpecibus = "fireextKind"
			Randomize
			b = Int(Rnd * 5) + 1
				if b = 1 then Weapon = "Carbon Dioxide Extinguisher"
				if b = 2 then Weapon = "Foam Extinguisher"
				if b = 3 then Weapon = "Chemical Extinguisher"
				if b = 4 then Weapon = "Bucket of Water"
				if b = 5 then Weapon = "Bucket of Sand"
	end if
	if a = 69 then
		StrifeSpecibus = "bowlgpinKind"
			Randomize
			b = Int(Rnd * 2) + 1
				if b = 1 then Weapon = "Bowling Pin"
				if b = 2 then Weapon = "Juggling Club"
	end if
	if a = 70 then
		StrifeSpecibus = "woodwindKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Pan Pipes"
				if b = 2 then Weapon = "Oboe"
				if b = 3 then Weapon = "Piccolo"
				if b = 4 then Weapon = "Clarinet"
	end if
	if a = 71 then
		StrifeSpecibus = "candlstkKind"
			Randomize
			b = Int(Rnd * 3) + 1
				if b = 1 then Weapon = "Silver Candlestick"
				if b = 2 then Weapon = "Candelabra"
				if b = 3 then Weapon = "Wraught Iron Candlestick"
	end if
	if a = 72 then
		StrifeSpecibus = "paddleKind"
			Randomize
			b = Int(Rnd * 3) + 1
				if b = 1 then Weapon = "Mixing Spoon"
				if b = 2 then Weapon = "Pastry Paddle"
				if b = 3 then Weapon = "Boat Oar"
	end if
	if a = 73 then
		StrifeSpecibus = "barbwireKind"
			Randomize
			b = Int(Rnd * 3) + 1
				if b = 1 then Weapon = "Barbed Wire Circlet"
				if b = 2 then Weapon = "Barbed Wire Whip"
				if b = 3 then Weapon = "Barbed Wire Club"
	end if
	if a = 74 then
		StrifeSpecibus = "dartKind"
			Randomize
			b = Int(Rnd * 3) + 1
				if b = 1 then Weapon = "Lawn Dart"
				if b = 2 then Weapon = "Throwing Dart"
				if b = 3 then Weapon = "Tranquilizer Dart"
	end if
	if a = 75 then
		StrifeSpecibus = "marbleKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Swirly Glass Marble"
				if b = 2 then Weapon = "Clear Glass Marble"
				if b = 3 then Weapon = "Colored Marble"
				if b = 4 then Weapon = "Shooter Marble"
	end if
	if a = 76 then
		StrifeSpecibus = "chiselKind"
			Randomize
			b = Int(Rnd * 2) + 1
				if b = 1 then Weapon = "Wood Chisel"
				if b = 2 then Weapon = "Metal Chisel"
	end if
	if a = 77 then
		StrifeSpecibus = "aerosolKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Hairspray"
				if b = 2 then Weapon = "Bugspray"
				if b = 3 then Weapon = "Pepperspray"
				if b = 4 then Weapon = "Axe Body Spray"
				if b = 5 then Weapon = "Canned Whip Cream"
				if b = 6 then Weapon = "Cheez-Whiz"
	end if
	if a = 78 then
		StrifeSpecibus = "shoeKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Hiking Boots"
				if b = 2 then Weapon = "Tapdancing Shoes"
				if b = 3 then Weapon = "Steel-toed Shoes"
				if b = 4 then Weapon = "Diving Flippers"
				if b = 5 then Weapon = "Ballerina Slippers"
				if b = 6 then Weapon = "Sneakers"
	end if
	if a = 79 then
		StrifeSpecibus = "puppetKind"
			Randomize
			b = Int(Rnd * 5) + 1
				if b = 1 then Weapon = "Ventriloquist's Dummy"
				if b = 2 then Weapon = "Creepy Doll"
				if b = 3 then Weapon = "Sock Puppet"
				if b = 4 then Weapon = "Muppet"
				if b = 5 then Weapon = "Smuppet"
	end if
	if a = 80 then
		StrifeSpecibus = "coatKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Sweatshirt"
				if b = 2 then Weapon = "Weighted Coat"
				if b = 3 then Weapon = "Armored Coat"
				if b = 4 then Weapon = "Jacket"
	end if
	if a = 81 then
		StrifeSpecibus = "plierKind"
			Randomize
			b = Int(Rnd * 3) + 1
				if b = 1 then Weapon = "Needle-nose Pliers"
				if b = 2 then Weapon = "Roundtip Pliers"
				if b = 3 then Weapon = "Wirecutters"
	end if
	if a = 82 then
		StrifeSpecibus = "fanKind"
			Randomize
			b = Int(Rnd * 4) + 1
				if b = 1 then Weapon = "Paper Fan"
				if b = 2 then Weapon = "Electric Fan"
				if b = 3 then Weapon = "Handheld Electric Fan"
				if b = 4 then Weapon = "Steel Folding Fan"
	end if
	if a = 83 then
		StrifeSpecibus = "brassKind"
			Randomize
			b = Int(Rnd * 5) + 1
				if b = 1 then Weapon = "Brass Knuckles"
				if b = 2 then Weapon = "Saxophone"
				if b = 3 then Weapon = "Trumpet"
				if b = 4 then Weapon = "Trombone"
				if b = 5 then Weapon = "Tuba"
	end if
	if a = 84 then
		StrifeSpecibus = "rockKind"
			Randomize
			b = Int(Rnd * 6) + 1
				if b = 1 then Weapon = "Pebble"
				if b = 2 then Weapon = "Dwayne Johnson Action Figure"
				if b = 3 then Weapon = "Stone"
				if b = 4 then Weapon = "Rock"
				if b = 5 then Weapon = "Boulder"
				if b = 6 then Weapon = "Electric Guitar"
	end if
end sub



Sub DetectClick()

WHILE buttons and 1 
    sleep 100
    res = GetMouse (mousex, mousey, , buttons)
    If res <> 0 Then exit while'' Failure  
    LeftClickCounter = LeftClickCounter+1
    wend

WHILE buttons and 2 
    sleep 100
    res = GetMouse (mousex, mousey, , buttons)
    If res <> 0 Then exit while'' Failure  
    RightClickCounter = RightClickCounter+1
    wend

if LeftClickCounter <> 0 then LeftClick = LeftClick + 1
if RightClickCounter <> 0 then RightClick = RightClick + 1

LeftClickCounter = 0
RightClickCounter = 0

    End Sub


Sub ConsortGeneration()
FindConsortQuirk()
FindConsortColor()
FindConsortType()
FindConsortLike()
ConsortString = ConsortQuirk + " " + ConsortColor + " " + ConsortType
end sub


Sub ChooseNextLetter()
'NextLetter Initial1 Initial2
If NextLetter = "any" then
    NextLetter = "A"
    exit sub
    end if
If NextLetter = "A" then 
    NextLetter = "B"
    exit sub
    end if
If NextLetter = "B" then 
    NextLetter = "C"
    exit sub
    end if
If NextLetter = "C" then 
    NextLetter = "D"
    exit sub
    end if
If NextLetter = "D" then 
    NextLetter = "E"
    exit sub
    end if
If NextLetter = "E" then 
    NextLetter = "F"
    exit sub
    end if
If NextLetter = "F" then 
    NextLetter = "G"
    exit sub
    end if
If NextLetter = "G" then 
    NextLetter = "H"
    exit sub
    end if
If NextLetter = "H" then 
    NextLetter = "I"
    exit sub
    end if
If NextLetter = "I" then 
    NextLetter = "J"
    exit sub
    end if
If NextLetter = "J" then 
    NextLetter = "K"
    exit sub
    end if
If NextLetter = "K" then 
    NextLetter = "L"
    exit sub
    end if
If NextLetter = "L" then 
    NextLetter = "M"
    exit sub
    end if
If NextLetter = "M" then 
    NextLetter = "N"
    exit sub
    end if
If NextLetter = "N" then 
    NextLetter = "O"
    exit sub
    end if
If NextLetter = "O" then 
    NextLetter = "P"
    exit sub
    end if
If NextLetter = "P" then 
    NextLetter = "Q"
    exit sub
    end if
If NextLetter = "Q" then 
    NextLetter = "R"
    exit sub
    end if
If NextLetter = "R" then 
    NextLetter = "S"
    exit sub
    end if
If NextLetter = "S" then 
    NextLetter = "T"
    exit sub
    end if
If NextLetter = "T" then 
    NextLetter = "U"
    exit sub
    end if
If NextLetter = "U" then 
    NextLetter = "V"
    exit sub
    end if
If NextLetter = "V" then 
    NextLetter = "W"
    exit sub
    end if
If NextLetter = "W" then 
    NextLetter = "X"
    exit sub
    end if
If NextLetter = "X" then 
    NextLetter = "Y"
    exit sub
    end if
If NextLetter = "Y" then 
    NextLetter = "Z"
    exit sub
    end if
If NextLetter = "Z" then 
    NextLetter = "any"
    exit sub
    end if

end sub


Sub FindHandle1()
TryHandle1Again:
Randomize
a = Int(Rnd * 464) + 1
if a = 1 then Handle1 = "lonely"
if a = 2 then Handle1 = "liberal"
if a = 3 then Handle1 = "smiling"
if a = 4 then Handle1 = "graphical"
if a = 5 then Handle1 = "judicial"
if a = 6 then Handle1 = "frequent"
if a = 7 then Handle1 = "transparent"
if a = 8 then Handle1 = "guilded"
if a = 9 then Handle1 = "informative"
if a = 10 then Handle1 = "acapella"
if a = 11 then Handle1 = "ace"
if a = 12 then Handle1 = "adios"
if a = 13 then Handle1 = "analog"
if a = 14 then Handle1 = "apocalypse"
if a = 15 then Handle1 = "aquatic"
if a = 16 then Handle1 = "arachnids"
if a = 17 then Handle1 = "arcane"
if a = 18 then Handle1 = "arduous"
if a = 19 then Handle1 = "aristocratic"
if a = 20 then Handle1 = "arsenic"
if a = 21 then Handle1 = "ballistic"
if a = 22 then Handle1 = "basic"
if a = 23 then Handle1 = "benign"
if a = 24 then Handle1 = "blackout"
if a = 25 then Handle1 = "blatant"
if a = 26 then Handle1 = "bonsai"
if a = 27 then Handle1 = "caligulas"
if a = 28 then Handle1 = "cannon"
if a = 29 then Handle1 = "canon"
if a = 30 then Handle1 = "carapace"
if a = 31 then Handle1 = "carcino"
if a = 32 then Handle1 = "centaurs"
if a = 33 then Handle1 = "concave"
if a = 34 then Handle1 = "cuttlefish"
if a = 35 then Handle1 = "dark"
if a = 36 then Handle1 = "destitute"
if a = 37 then Handle1 = "digital"
if a = 38 then Handle1 = "directory"
if a = 39 then Handle1 = "double"
if a = 40 then Handle1 = "ductile"
if a = 41 then Handle1 = "dynamite"
if a = 42 then Handle1 = "ecto"
if a = 43 then Handle1 = "elegant"
if a = 44 then Handle1 = "exasperant"
if a = 45 then Handle1 = "forgotten"
if a = 46 then Handle1 = "fortuitous"
if a = 47 then Handle1 = "fractal"
if a = 48 then Handle1 = "future"
if a = 49 then Handle1 = "gallows"
if a = 50 then Handle1 = "garden"
if a = 51 then Handle1 = "ghostly"
if a = 52 then Handle1 = "golden"
if a = 53 then Handle1 = "grayscale"
if a = 54 then Handle1 = "grim"
if a = 55 then Handle1 = "harmonica"
if a = 56 then Handle1 = "highway"
if a = 57 then Handle1 = "hotblooded"
if a = 58 then Handle1 = "hysterical"
if a = 59 then Handle1 = "iconic"
if a = 60 then Handle1 = "imperfect"
if a = 61 then Handle1 = "irregular"
if a = 62 then Handle1 = "irrelevant"
if a = 63 then Handle1 = "jovial"
if a = 64 then Handle1 = "knotted"
if a = 65 then Handle1 = "lamppost"
if a = 66 then Handle1 = "lasting"
if a = 67 then Handle1 = "laughable"
if a = 68 then Handle1 = "lethargic"
if a = 69 then Handle1 = "linguistic"
if a = 70 then Handle1 = "malignant"
if a = 71 then Handle1 = "matrix"
if a = 72 then Handle1 = "mechanical"
if a = 73 then Handle1 = "misguided"
if a = 74 then Handle1 = "nocturnal"
if a = 75 then Handle1 = "notorious"
if a = 76 then Handle1 = "octagon"
if a = 77 then Handle1 = "oddball"
if a = 78 then Handle1 = "outlandish"
if a = 79 then Handle1 = "paragon"
if a = 80 then Handle1 = "passive"
if a = 81 then Handle1 = "petulant"
if a = 82 then Handle1 = "pickle"
if a = 83 then Handle1 = "pocket"
if a = 84 then Handle1 = "problem"
if a = 85 then Handle1 = "pseudo"
if a = 86 then Handle1 = "queasy"
if a = 87 then Handle1 = "racecar"
if a = 88 then Handle1 = "rainbow"
if a = 89 then Handle1 = "restless"
if a = 90 then Handle1 = "retro"
if a = 91 then Handle1 = "robust"
if a = 92 then Handle1 = "royal"
if a = 93 then Handle1 = "saffron"
if a = 94 then Handle1 = "sapphire"
if a = 95 then Handle1 = "serious"
if a = 96 then Handle1 = "silent"
if a = 97 then Handle1 = "solar"
if a = 98 then Handle1 = "spectral"
if a = 99 then Handle1 = "stealthy"
if a = 101 then Handle1 = "suspicious"
if a = 102 then Handle1 = "temporal"
if a = 103 then Handle1 = "tentacle"
if a = 104 then Handle1 = "textbook"
if a = 105 then Handle1 = "tolerant"
if a = 106 then Handle1 = "trivial"
if a = 107 then Handle1 = "turntech"
if a = 108 then Handle1 = "twin"
if a = 109 then Handle1 = "uncanny"
if a = 110 then Handle1 = "unusual"
if a = 111 then Handle1 = "vegas"
if a = 112 then Handle1 = "vivid"
if a = 113 then Handle1 = "western"
if a = 114 then Handle1 = "whimsical"
if a = 115 then Handle1 = "xenophobic"
if a = 116 then Handle1 = "yesterdays"
if a = 117 then Handle1 = "zealous"
if a = 118 then Handle1 = "kneeling"
if a = 119 then Handle1 = "keelhaul"
if a = 120 then Handle1 = "cord"
if a = 121 then Handle1 = "alien"
if a = 122 then Handle1 = "alchemical"
if a = 123 then Handle1 = "anti"
if a = 124 then Handle1 = "hetero"
if a = 125 then Handle1 = "hydro"
if a = 126 then Handle1 = "hemi"
if a = 127 then Handle1 = "pre"
if a = 128 then Handle1 = "post"
if a = 129 then Handle1 = "blind"
if a = 130 then Handle1 = "boggart"
if a = 131 then Handle1 = "burnt"
if a = 132 then Handle1 = "blasted"
if a = 133 then Handle1 = "childish"
if a = 134 then Handle1 = "challenge"
if a = 135 then Handle1 = "classy"
if a = 136 then Handle1 = "classless"
if a = 137 then Handle1 = "caste"
if a = 138 then Handle1 = "career"
if a = 139 then Handle1 = "cello"
if a = 140 then Handle1 = "cell"
if a = 141 then Handle1 = "candid"
if a = 142 then Handle1 = "cambions"
if a = 143 then Handle1 = "cambrian"
if a = 144 then Handle1 = "precambrian"
if a = 145 then Handle1 = "delay"
if a = 146 then Handle1 = "daylight"
if a = 147 then Handle1 = "denied"
if a = 148 then Handle1 = "dismay"
if a = 149 then Handle1 = "daft"
if a = 150 then Handle1 = "dangerous"
if a = 151 then Handle1 = "different"
if a = 152 then Handle1 = "deleterious"
if a = 153 then Handle1 = "disc"
if a = 154 then Handle1 = "desk"
if a = 155 then Handle1 = "damiens"
if a = 156 then Handle1 = "damnations"
if a = 157 then Handle1 = "eloquent"
if a = 158 then Handle1 = "elven"
if a = 159 then Handle1 = "eleventh"
if a = 160 then Handle1 = "first"
if a = 161 then Handle1 = "second"
if a = 162 then Handle1 = "third"
if a = 163 then Handle1 = "fourth"
if a = 164 then Handle1 = "fifth"
if a = 165 then Handle1 = "sixth"
if a = 166 then Handle1 = "seventh"
if a = 167 then Handle1 = "eighth"
if a = 168 then Handle1 = "ninth"
if a = 169 then Handle1 = "tenth"
if a = 170 then Handle1 = "twelfth"
if a = 171 then Handle1 = "emergency"
if a = 172 then Handle1 = "emergent"
if a = 173 then Handle1 = "eternal"
if a = 174 then Handle1 = "everlasting"
if a = 175 then Handle1 = "eel"
if a = 176 then Handle1 = "elephant"
if a = 177 then Handle1 = "elastic"
if a = 178 then Handle1 = "flacid"
if a = 179 then Handle1 = "felt"
if a = 180 then Handle1 = "fullblown"
if a = 181 then Handle1 = "full"
if a = 182 then Handle1 = "fetid"
if a = 183 then Handle1 = "flaming"
if a = 184 then Handle1 = "fired"
if a = 185 then Handle1 = "flotsam"
if a = 186 then Handle1 = "fell"
if a = 187 then Handle1 = "jetsam"
if a = 188 then Handle1 = "gale"
if a = 189 then Handle1 = "gilded"
if a = 190 then Handle1 = "blended"
if a = 191 then Handle1 = "gall"
if a = 192 then Handle1 = "guest"
if a = 193 then Handle1 = "ghostly"
if a = 194 then Handle1 = "ghastly"
if a = 195 then Handle1 = "guild"
if a = 196 then Handle1 = "harmful"
if a = 197 then Handle1 = "healthy"
if a = 198 then Handle1 = "helio"
if a = 199 then Handle1 = "solar"
if a = 200 then Handle1 = "helix"
if a = 201 then Handle1 = "hated"
if a = 202 then Handle1 = "hatred"
if a = 203 then Handle1 = "helpful"
if a = 204 then Handle1 = "handy"
if a = 205 then Handle1 = "hex"
if a = 206 then Handle1 = "hefty"
if a = 207 then Handle1 = "illegal"
if a = 208 then Handle1 = "irreverant"
if a = 209 then Handle1 = "insatiable"
if a = 210 then Handle1 = "intolerant"
if a = 211 then Handle1 = "incapable"
if a = 212 then Handle1 = "influential"
if a = 213 then Handle1 = "isolated"
if a = 214 then Handle1 = "isometric"
if a = 215 then Handle1 = "isosceles"
if a = 216 then Handle1 = "ishmaels"
if a = 217 then Handle1 = "triskelion"
if a = 218 then Handle1 = "ice"
if a = 219 then Handle1 = "iscariots"
if a = 220 then Handle1 = "judgement"
if a = 221 then Handle1 = "jealous"
if a = 222 then Handle1 = "jive"
if a = 223 then Handle1 = "jewel"
if a = 224 then Handle1 = "jackanape"
if a = 225 then Handle1 = "jackrabbit"
if a = 226 then Handle1 = "jack"
if a = 227 then Handle1 = "jest"
if a = 228 then Handle1 = "jailhouse"
if a = 229 then Handle1 = "jovian"
if a = 230 then Handle1 = "killer"
if a = 231 then Handle1 = "cloven"
if a = 232 then Handle1 = "kitten"
if a = 233 then Handle1 = "klepto"
if a = 234 then Handle1 = "clever"
if a = 235 then Handle1 = "knight"
if a = 236 then Handle1 = "knickknack"
if a = 237 then Handle1 = "knack"
if a = 238 then Handle1 = "knowledgable"
if a = 239 then Handle1 = "cleft"
if a = 240 then Handle1 = "knife"
if a = 241 then Handle1 = "blade"
if a = 242 then Handle1 = "level"
if a = 243 then Handle1 = "lasting"
if a = 244 then Handle1 = "ley"
if a = 245 then Handle1 = "lilting"
if a = 246 then Handle1 = "lay"
if a = 247 then Handle1 = "landed"
if a = 248 then Handle1 = "left"
if a = 249 then Handle1 = "right"
if a = 250 then Handle1 = "true"
if a = 251 then Handle1 = "misled"
if a = 252 then Handle1 = "misleading"
if a = 253 then Handle1 = "mis"
if a = 254 then Handle1 = "master"
if a = 255 then Handle1 = "mellow"
if a = 256 then Handle1 = "mail-in"
if a = 257 then Handle1 = "milky"
if a = 258 then Handle1 = "misfit"
if a = 259 then Handle1 = "mended"
if a = 260 then Handle1 = "mankinds"
if a = 261 then Handle1 = "nasty"
if a = 262 then Handle1 = "nefarious"
if a = 263 then Handle1 = "new"
if a = 264 then Handle1 = "nickelplated"
if a = 265 then Handle1 = "non"
if a = 266 then Handle1 = "enumerated"
if a = 267 then Handle1 = "nailfile"
if a = 268 then Handle1 = "nitrous"
if a = 269 then Handle1 = "octarine"
if a = 270 then Handle1 = "octo"
if a = 271 then Handle1 = "octuple"
if a = 272 then Handle1 = "olden"
if a = 273 then Handle1 = "ancient"
if a = 274 then Handle1 = "olfactory"
if a = 275 then Handle1 = "olivers"
if a = 276 then Handle1 = "opportune"
if a = 277 then Handle1 = "oppressive"
if a = 278 then Handle1 = "olive"
if a = 279 then Handle1 = "orderly"
if a = 280 then Handle1 = "gander"
if a = 281 then Handle1 = "problematic"
if a = 282 then Handle1 = "questionable"
if a = 283 then Handle1 = "inquiry"
if a = 284 then Handle1 = "sequel"
if a = 285 then Handle1 = "sesquipodelian"
if a = 286 then Handle1 = "quest"
if a = 287 then Handle1 = "quisling"
if a = 288 then Handle1 = "queens"
if a = 289 then Handle1 = "quibble"
if a = 290 then Handle1 = "quidditch"
if a = 291 then Handle1 = "religious"
if a = 292 then Handle1 = "reliquary"
if a = 293 then Handle1 = "relic"
if a = 294 then Handle1 = "rose"
if a = 295 then Handle1 = "randomaccess"
if a = 296 then Handle1 = "ruling"
if a = 297 then Handle1 = "restful"
if a = 298 then Handle1 = "sovereign"
if a = 299 then Handle1 = "sequestered"
if a = 300 then Handle1 = "selfish"
if a = 301 then Handle1 = "salacious"
if a = 302 then Handle1 = "salarian"
if a = 303 then Handle1 = "talented"
if a = 304 then Handle1 = "untested"
if a = 305 then Handle1 = "trusty"
if a = 306 then Handle1 = "teutonic"
if a = 307 then Handle1 = "teatime"
if a = 308 then Handle1 = "threat"
if a = 309 then Handle1 = "thalio"
if a = 310 then Handle1 = "untreated"
if a = 311 then Handle1 = "therapeutic"
if a = 312 then Handle1 = "theatric"
if a = 313 then Handle1 = "united"
if a = 314 then Handle1 = "utmost"
if a = 315 then Handle1 = "undone"
if a = 316 then Handle1 = "ulterior"
if a = 317 then Handle1 = "ultimate"
if a = 318 then Handle1 = "azerothian"
if a = 319 then Handle1 = "upper"
if a = 320 then Handle1 = "udder"
if a = 321 then Handle1 = "utter"
if a = 322 then Handle1 = "ermine"
if a = 323 then Handle1 = "valence"
if a = 324 then Handle1 = "balanced"
if a = 325 then Handle1 = "vilified"
if a = 326 then Handle1 = "vandal"
if a = 327 then Handle1 = "vested"
if a = 328 then Handle1 = "vile"
if a = 329 then Handle1 = "voluminous"
if a = 330 then Handle1 = "misty"
if a = 331 then Handle1 = "virtual"
if a = 332 then Handle1 = "vapid"
if a = 333 then Handle1 = "magnanimous"
if a = 334 then Handle1 = "watery"
if a = 335 then Handle1 = "wealthy"
if a = 336 then Handle1 = "wandering"
if a = 337 then Handle1 = "wonderful"
if a = 338 then Handle1 = "wistful"
if a = 339 then Handle1 = "whimsical"
if a = 340 then Handle1 = "wasteful"
if a = 341 then Handle1 = "xeno"
if a = 342 then Handle1 = "xyelidae"
if a = 343 then Handle1 = "xtreme"
if a = 344 then Handle1 = "extreme"
if a = 345 then Handle1 = "excellent"
if a = 346 then Handle1 = "xaviers"
if a = 347 then Handle1 = "xray"
if a = 348 then Handle1 = "xlinked"
if a = 349 then Handle1 = "xenon"
if a = 350 then Handle1 = "xenogenetic"
if a = 351 then Handle1 = "xeranthemum"
if a = 352 then Handle1 = "xeric"
if a = 353 then Handle1 = "xerophyte"
if a = 354 then Handle1 = "xerox"
if a = 355 then Handle1 = "xerxes"
if a = 356 then Handle1 = "xinjiang"
if a = 357 then Handle1 = "xiphoid"
if a = 358 then Handle1 = "xmas"
if a = 359 then Handle1 = "xylene"
if a = 360 then Handle1 = "xylogen"
if a = 361 then Handle1 = "yacht"
if a = 362 then Handle1 = "yam"
if a = 363 then Handle1 = "yinyang"
if a = 364 then Handle1 = "yankee"
if a = 365 then Handle1 = "yard"
if a = 366 then Handle1 = "yarn"
if a = 367 then Handle1 = "yearning"
if a = 368 then Handle1 = "yeats"
if a = 369 then Handle1 = "yellowbellied"
if a = 370 then Handle1 = "yeoman"
if a = 371 then Handle1 = "yew"
if a = 372 then Handle1 = "yggdrasils"
if a = 373 then Handle1 = "yogi"
if a = 374 then Handle1 = "yolk"
if a = 375 then Handle1 = "younger"
if a = 376 then Handle1 = "ycleped"
if a = 377 then Handle1 = "hippocrates"
if a = 378 then Handle1 = "zany"
if a = 379 then Handle1 = "zealous"
if a = 380 then Handle1 = "zebra"
if a = 381 then Handle1 = "zeitgeist"
if a = 382 then Handle1 = "zen"
if a = 383 then Handle1 = "sequined"
if a = 384 then Handle1 = "zero"
if a = 385 then Handle1 = "zeroth"
if a = 386 then Handle1 = "zesty"
if a = 387 then Handle1 = "zeta"
if a = 388 then Handle1 = "ziggurat"
if a = 389 then Handle1 = "zillionth"
if a = 390 then Handle1 = "zinc"
if a = 391 then Handle1 = "zootic"
if a = 392 then Handle1 = "zombie"
if a = 393 then Handle1 = "zucchini"
if a = 394 then Handle1 = "zygote"
if a = 395 then Handle1 = "zapotec"
if a = 396 then Handle1 = "zayin"
if a = 397 then Handle1 = "zeolitic"
if a = 398 then Handle1 = "aero"
if a = 399 then Handle1 = "abandoned"
if a = 400 then Handle1 = "abased"
if a = 401 then Handle1 = "abels"
if a = 402 then Handle1 = "abhorrent"
if a = 403 then Handle1 = "abject"
if a = 404 then Handle1 = "able"
if a = 405 then Handle1 = "afforementioned"
if a = 406 then Handle1 = "aleph"
if a = 407 then Handle1 = "alpha"
if a = 408 then Handle1 = "beta"
if a = 409 then Handle1 = "gamma"
if a = 410 then Handle1 = "ante"
if a = 411 then Handle1 = "appolos"
if a = 412 then Handle1 = "aqua"
if a = 413 then Handle1 = "arch"
if a = 414 then Handle1 = "archimedes"
if a = 415 then Handle1 = "archival"
if a = 416 then Handle1 = "arctic"
if a = 417 then Handle1 = "arid"
if a = 418 then Handle1 = "ascetic"
if a = 419 then Handle1 = "backfire"
if a = 420 then Handle1 = "baleful"
if a = 421 then Handle1 = "baldrs"
if a = 422 then Handle1 = "bandwagon"
if a = 423 then Handle1 = "bangladesh"
if a = 424 then Handle1 = "barenecked"
if a = 425 then Handle1 = "baritone"
if a = 426 then Handle1 = "barmy"
if a = 427 then Handle1 = "batter"
if a = 428 then Handle1 = "beethovens"
if a = 429 then Handle1 = "benedicts"
if a = 430 then Handle1 = "byzantine"
if a = 431 then Handle1 = "calcium"
if a = 432 then Handle1 = "calico"
if a = 433 then Handle1 = "canis"
if a = 434 then Handle1 = "caprine"
if a = 435 then Handle1 = "celtic"
if a = 436 then Handle1 = "clenched"
if a = 437 then Handle1 = "coffeehouse"
if a = 438 then Handle1 = "crabapple"
if a = 439 then Handle1 = "crackerbarrel"
if a = 440 then Handle1 = "crackajack"
if a = 441 then Handle1 = "crawdad"
if a = 442 then Handle1 = "daedalus"
if a = 443 then Handle1 = "damascus"
if a = 444 then Handle1 = "deadeye"
if a = 445 then Handle1 = "descartes"
if a = 446 then Handle1 = "desert"
if a = 447 then Handle1 = "dielectric"
if a = 448 then Handle1 = "dionysus"
if a = 449 then Handle1 = "dapper"
if a = 450 then Handle1 = "divvied"
if a = 451 then Handle1 = "dockside"
if a = 452 then Handle1 = "doctor"
if a = 453 then Handle1 = "duckbilled"
if a = 454 then Handle1 = "dusk"
if a = 455 then Handle1 = "dutch"
if a = 456 then Handle1 = "edwards"
if a = 457 then Handle1 = "eratosthenes"
if a = 458 then Handle1 = "erasmus"
if a = 459 then Handle1 = "eris"
if a = 460 then Handle1 = "eulers"
if a = 461 then Handle1 = "falsetto"
if a = 462 then Handle1 = "feckless"
if a = 463 then Handle1 = "ferdinands"
if a = 464 then Handle1 = "fibbonaccis"

if Initial1 = "any" then exit sub
if UCase(Left(Handle1,1)) <> Initial1 goto TryHandle1Again

end sub



Sub FindHandle2()
TryHandle2Again:
Randomize
a = Int(Rnd * 195) + 1
if a = 1 then Handle2 = "Scribbler"
if a = 2 then Handle2 = "Protagonist"
if a = 3 then Handle2 = "Countryman"
if a = 4 then Handle2 = "Doppelganger"
if a = 5 then Handle2 = "Detective"
if a = 6 then Handle2 = "Swordsman"
if a = 7 then Handle2 = "Regulator"
if a = 8 then Handle2 = "Magician"
if a = 9 then Handle2 = "Blacksmith"
if a = 10 then Handle2 = "Onlooker"
if a = 11 then Handle2 = "Acupuncture"
if a = 12 then Handle2 = "Adversary"
if a = 13 then Handle2 = "Anatomy"
if a = 14 then Handle2 = "Apothecary"
if a = 15 then Handle2 = "Aquarium"
if a = 16 then Handle2 = "Arisen"
if a = 17 then Handle2 = "Armageddons"
if a = 18 then Handle2 = "Assassin"
if a = 19 then Handle2 = "Auxiliatrix"
if a = 20 then Handle2 = "Bacteria"
if a = 21 then Handle2 = "Barnacle"
if a = 22 then Handle2 = "Biologist"
if a = 23 then Handle2 = "Calibrator"
if a = 24 then Handle2 = "Capitalist"
if a = 25 then Handle2 = "Catnip"
if a = 26 then Handle2 = "Celebration"
if a = 27 then Handle2 = "Culler"
if a = 28 then Handle2 = "Derivative"
if a = 29 then Handle2 = "Dictator"
if a = 30 then Handle2 = "Divulger"
if a = 31 then Handle2 = "Educator"
if a = 32 then Handle2 = "Enthusiast"
if a = 33 then Handle2 = "Equinox"
if a = 34 then Handle2 = "Escapist"
if a = 35 then Handle2 = "Eternity"
if a = 36 then Handle2 = "Explorer"
if a = 37 then Handle2 = "Extinguisher"
if a = 38 then Handle2 = "Factory"
if a = 39 then Handle2 = "Forger"
if a = 40 then Handle2 = "Gambler"
if a = 41 then Handle2 = "Geneticist"
if a = 42 then Handle2 = "Gnostic"
if a = 43 then Handle2 = "Godhead"
if a = 44 then Handle2 = "Grip"
if a = 45 then Handle2 = "Guitarist"
if a = 46 then Handle2 = "Hunter"
if a = 47 then Handle2 = "Hyperdrive"
if a = 48 then Handle2 = "Illustrator"
if a = 49 then Handle2 = "Inferno"
if a = 50 then Handle2 = "Infiltrator"
if a = 51 then Handle2 = "Inflection"
if a = 52 then Handle2 = "Inspector"
if a = 53 then Handle2 = "Javelin"
if a = 54 then Handle2 = "Journalist"
if a = 55 then Handle2 = "Juggernaut"
if a = 56 then Handle2 = "Kinesis"
if a = 57 then Handle2 = "Kinsmen"
if a = 58 then Handle2 = "Luminary"
if a = 59 then Handle2 = "Materialist"
if a = 60 then Handle2 = "Mobilizer"
if a = 61 then Handle2 = "Mobster"
if a = 62 then Handle2 = "Monster"
if a = 63 then Handle2 = "Nativity"
if a = 64 then Handle2 = "Noisemaker"
if a = 65 then Handle2 = "Notation"
if a = 66 then Handle2 = "Odyssey"
if a = 67 then Handle2 = "Olympiad"
if a = 68 then Handle2 = "Origins"
if a = 69 then Handle2 = "Pacifist"
if a = 70 then Handle2 = "Paradox"
if a = 71 then Handle2 = "Perfectionist"
if a = 72 then Handle2 = "Popsicle"
if a = 73 then Handle2 = "Professor"
if a = 74 then Handle2 = "Programmer"
if a = 75 then Handle2 = "Protector"
if a = 76 then Handle2 = "Questioner"
if a = 77 then Handle2 = "Quickster"
if a = 78 then Handle2 = "Ravager"
if a = 79 then Handle2 = "Renegade"
if a = 80 then Handle2 = "Robber"
if a = 81 then Handle2 = "Rocket"
if a = 82 then Handle2 = "Sampler"
if a = 83 then Handle2 = "Samurai"
if a = 84 then Handle2 = "Scarecrow"
if a = 85 then Handle2 = "Scavenger"
if a = 86 then Handle2 = "Sentenial"
if a = 87 then Handle2 = "Sleuth"
if a = 88 then Handle2 = "Smuggler"
if a = 89 then Handle2 = "Spaceship"
if a = 90 then Handle2 = "Spectacle"
if a = 91 then Handle2 = "Taxonomist"
if a = 92 then Handle2 = "Typhoon"
if a = 93 then Handle2 = "Testimony"
if a = 94 then Handle2 = "Therapist"
if a = 95 then Handle2 = "Toreador"
if a = 96 then Handle2 = "Trickster"
if a = 97 then Handle2 = "Troubador"
if a = 98 then Handle2 = "Usurper"
if a = 99 then Handle2 = "Vacancy"
if a = 101 then Handle2 = "Vestibule"
if a = 102 then Handle2 = "Visionary"
if a = 103 then Handle2 = "Warlord"
if a = 104 then Handle2 = "Waterfall"
if a = 105 then Handle2 = "Wizard"
if a = 106 then Handle2 = "Xylophone"
if a = 107 then Handle2 = "Youngster"
if a = 108 then Handle2 = "Zeppelin"
if a = 109 then Handle2 = "Swindler"
if a = 110 then Handle2 = "Aerofoil"
if a = 111 then Handle2 = "Aeromancer"
if a = 112 then Handle2 = "Aardvark"
if a = 113 then Handle2 = "Abacus"
if a = 114 then Handle2 = "Abbatoir"
if a = 115 then Handle2 = "Abdicant"
if a = 116 then Handle2 = "Abjurer"
if a = 117 then Handle2 = "Academy"
if a = 118 then Handle2 = "Acetate"
if a = 119 then Handle2 = "Adept"
if a = 120 then Handle2 = "Administrant"
if a = 121 then Handle2 = "Advocate"
if a = 122 then Handle2 = "Award"
if a = 123 then Handle2 = "Agent"
if a = 124 then Handle2 = "Alloy"
if a = 125 then Handle2 = "Analogy"
if a = 126 then Handle2 = "Aorta"
if a = 127 then Handle2 = "Aperture"
if a = 128 then Handle2 = "Apricot"
if a = 129 then Handle2 = "Ash"
if a = 130 then Handle2 = "Bacon"
if a = 131 then Handle2 = "Balladier"
if a = 132 then Handle2 = "Ballista"
if a = 133 then Handle2 = "Banana"
if a = 134 then Handle2 = "Bandolier"
if a = 135 then Handle2 = "Bark"
if a = 136 then Handle2 = "Barrio"
if a = 137 then Handle2 = "Bassoon"
if a = 138 then Handle2 = "Blackberry"
if a = 139 then Handle2 = "Camel"
if a = 140 then Handle2 = "Canvas"
if a = 141 then Handle2 = "Capacity"
if a = 142 then Handle2 = "Carbide"
if a = 143 then Handle2 = "Cargo"
if a = 144 then Handle2 = "Cheddar"
if a = 145 then Handle2 = "Civet"
if a = 146 then Handle2 = "Clarinet"
if a = 147 then Handle2 = "Cockerel"
if a = 148 then Handle2 = "Codswallop"
if a = 149 then Handle2 = "Cognate"
if a = 150 then Handle2 = "Comradery"
if a = 151 then Handle2 = "Conjecture"
if a = 152 then Handle2 = "Conveyance"
if a = 153 then Handle2 = "Czar"
if a = 154 then Handle2 = "Dandy"
if a = 155 then Handle2 = "Database"
if a = 156 then Handle2 = "Debacle"
if a = 157 then Handle2 = "Decentralization"
if a = 158 then Handle2 = "Demagogue"
if a = 159 then Handle2 = "Dementia"
if a = 160 then Handle2 = "Demon"
if a = 161 then Handle2 = "Decanter"
if a = 162 then Handle2 = "Deuterium"
if a = 163 then Handle2 = "Devotion"
if a = 164 then Handle2 = "Diamond"
if a = 165 then Handle2 = "Dependency"
if a = 166 then Handle2 = "Discord"
if a = 167 then Handle2 = "Divisor"
if a = 168 then Handle2 = "Doggerel"
if a = 169 then Handle2 = "Doppleganger"
if a = 170 then Handle2 = "Duet"
if a = 171 then Handle2 = "Dynast"
if a = 172 then Handle2 = "Efflorescence"
if a = 173 then Handle2 = "Dandiprat"
if a = 174 then Handle2 = "Egophony"
if a = 175 then Handle2 = "Eidolon"
if a = 176 then Handle2 = "Ember"
if a = 177 then Handle2 = "Enamel"
if a = 178 then Handle2 = "Ejecta"
if a = 179 then Handle2 = "Epistle"
if a = 180 then Handle2 = "Epitaph"
if a = 181 then Handle2 = "Errata"
if a = 182 then Handle2 = "Escapade"
if a = 183 then Handle2 = "Exalt"
if a = 184 then Handle2 = "Ethnarch"
if a = 185 then Handle2 = "Factotem"
if a = 186 then Handle2 = "Fancier"
if a = 187 then Handle2 = "Fantasm"
if a = 188 then Handle2 = "Festival"
if a = 189 then Handle2 = "Figment"
if a = 190 then Handle2 = "Flame"
if a = 191 then Handle2 = "Fisticuffs"
if a = 192 then Handle2 = "Forbear"
if a = 193 then Handle2 = "Formula"
if a = 194 then Handle2 = "Fossil"
if a = 195 then Handle2 = "Frivolity"

if Initial2 = "any" then exit sub
if UCase(Left(Handle2,1)) <> Initial2 goto TryHandle2Again

end sub

