#Controls
W,A,S,D - Move and turn
Space - shoot

#Description
I started off doing this assignment by deciding what type of game i was going to make.
I first decided to do a tower defence(https://github.com/KreechurCS/Tower_Defence_Assignment) game however after running into multiple problems with it
i decided to scrap the idea after a week. My next idea which is my current assignment was 
inspired by the game boxhead. This idea ran much more smoothly for me with only a few small
problems here and there which were quickly dealt with. The first things i did was added movement and basic shapes for the user and enemy which i was 
planning to change later but only altered slightly. The next thing i added was an abstract game objects class which
i used with the enemies and the bullets. However i did not use this in the player. The next addition was a timer as well as started working
on the bullet class i ran into a few problems which i then managed to resolve. I then removed the basic class i had for an enemy. I then
updated this class using the abstract class and added the enemy spawning. this was followed by basic AI which was replaced by better AI 
using ATAN2 function. I then added the collision of the bullets with the zombies causing them to be removed from the array list.
This allowed me to add the score counter. I then added the main menu which then ran into some problems as i was trying to use buttons as a method
i changed this to a class to fix this. I then added player health as well as a zombie class that extends to the enemy classs.
I also added a fast and a tank zombie type in the same way. I then added the delay to the bullets and a reset for when you die.
Next was the UI and the ammo. I then started working on the Upgrade screen, this reads and writes to a file the players total XP
and the upgrades they have bought. I then implemented each upgrade and altered the UI.
[![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/qJcx8txI0u4/0.jpg)](https://www.youtube.com/watch?v=qJcx8txI0u4)