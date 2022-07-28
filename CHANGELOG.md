# Companions datapack changelog

## Companion Treats [1.1.0] (in progress)

### Additions
 - Added treats that you can give to your companion to boost friendship
   - Bone Treat: grants 50 xp points | dropped rarely from skeletons
   - Berry Treat: grants 30 xp points | dropped rarely when destroying berry bushes
   - Beef Treat: grants 80 xp points | dropped rarely from cows

### Changes
 - Reduced the amount of particles produced from companions

### Fixes
 - Fixed particles produced from companions from stretching too far on the y-axis

## Multiplayer Fixes [1.0.5]

### Changes
 - Made the daily friendship xp reward requirements more forgiving in multiplayer

### Fixes
 - Fixed if another companion is nearer when a player is creating their companion they wouldn't get linked to their new companion
 - Fixed bug where friendship xp gain from killing mobs usually wouldn't work in multiplayer
 - Fixed books sometimes getting stats from the wrong companion in multiplayer

## Gifting Update [1.0.4]

The main issue I wanted to address with this update is how getting gifts would happen very infrequently (on average one every hour and 40 minutes) and the fact that getting the advancement An Unusual Gift would take dozens of hours waiting in the end.

### Changes
 - Gifts now become significantly more common the higher your friendship level is
 - Now gain 3 friendship xp upon collecting a gift
 - Sound effect to play when a gift is ready
 - Teleporting sound effect when summoning your companion
 - New chat message when your companion has a gift

 ### Fixes
  - Fixed bug where players could not hear friendship level up sounds
  - If a player has a gift pending, they can no longer become eligible for another gift (they will no longer get the chat message and sound effect)

## Hotfix 1.0.3

### Fixes
 - Fixed the measurement of time being used to count the delay before checking for gifts, which would cause gifts to almost never work

## Update 1.0.2

### Additions
 - Add "Mortal Enemies" advancement

### Changes
 - Removed the "executed x commands from function y" command feedback
 - Friendship xp now carries over when leveling up
 - Increased the the chances to get an elytra and a dragon head from a gift

## Update 1.0.1

### Additions
 - Created CHANGELOG.md to document changes
 - Sound effect that plays when a new companion is created

 ### Changes
 - Underlined "Refresh Book" in the book-GUi to enphasize that it is clickable
 - Changed colours in the book-GUI to be more consistent

### Fixes
 - Fixed a bug where if another player was closer when a companion was created than the one that threw the golden apple, then it would become the companion to the other player
 - Fixed bug where a player could have more than one companion