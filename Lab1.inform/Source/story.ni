"Isolated Chamber" by "Filip Conic"


The Chamber is a room. "You jolt up at the sound thunder. You find yourself on a bare raggedy mattress that looks about 100 years old. The mattress is sitting on a metal bed frame. The room around you isn't any nicer than the bed. Plain grey concrete everywhere you look, except for the tiny spotlight in the middle of the ceiling allowing in the scarce bit of light provided by the rainy and overcast day. On the other side of the room you see another plain metal table. Woohoo, how exciting!"

[Variables]
SpinCount is a number that varies. SpinCount is 0.

[Object Definitions]
The metal bed frame is in the Chamber. The description of the metal bed frame is "An old metal bed frame half rusted away. Seems like it's bolted to the floor and hasn't moved in decades."

The raggedy old mattress is on the metal bed frame. The description of the raggedy old mattress is "This mattress has seen better days. It's thin, torn, and the stuffing's is coming out... wait are those brown spots moving?"

The metal table is in the Chamber. The description of the metal table is "Ahh another beautiful piece of contemporary furniture. The mostly rusted plain metal table."

A old wooden dreidel is on the metal table. The description of the old wooden dreidel is "[examine_dreidel]".

[Bed Frame and Table Rules]
Instead of taking or pushing or pulling the metal bed frame, say "It was a valiant effort but it's definitely bolted to the floor. There's no moving it."

Instead of taking or pushing or pulling the metal table, say "You try as hard as you can to move the table but it won't budge. Whew that got you a little winded, maybe that exercise program your wife was telling you about wasn't the worst idea."

[Mattress Rules]
Instead of taking the raggedy old mattress, say "Yeah those brown spots are bed bugs, you don't wanna be touching the mattress."

[Dreidel/Spinning rules]
To say examine_dreidel:
	if the SpinCount is 0:		
		say "An intricately carved dreidel, with gold color inscriptions that seem to shimmer a rainbow in the little bit of light provided by the room light. The inscriptions are beautiful but they're definitely not anything you've seen before. [line break][line break]Seems like the only redeeming quality of this depressing ass room.";
	else if the SpinCount is 1:
		say "Damn that thing just keeps on going";
	else if the SpinCount is 2:
		say "This is getting a little freaky, it's just spinning, and spinning, and spinning...";
	else if the SpinCount is 3:
		say "It almost looks like it's speeding up? What the hell is going on?";
	else:
		say "It still hasn't stopped. This can't be real... None of this can be real. What is happening? Where am I? Is there a message to any of this? I don't care, I NEED TO WAKE UP!";
			
After examining the old wooden dreidel:
	if the SpinCount is greater than 0:
		increase the SpinCount by 1;
		continue the action;
	
Before spinning the old wooden dreidel:
	if the player does not have the old wooden dreidel:
		say "Well you can't do that by looking at it." instead.

Spinning is an action applying to one thing. 
Understand "spin [something]" as spinning.

Check spinning:
	if the noun is not the old wooden dreidel:
		say "Kind of a big object to be spinning don't you think?" instead.

Carry out spinning the old wooden dreidel:
	say "[dreidel_spun]";
	now spinCount is the SpinCount + 1;
	
To say dreidel_spun:
	if the SpinCount is 0:
		say "You spun the dreidel";
	else if the spinCount is 1:
		say "Damn that thing just keeps on going";
	else if the SpinCount is 2:
		say "This is getting a little freaky, it's just spinning, and spinning, and spinning...";
	else if the SpinCount is 3:
		say "It almost looks like it's speeding up? What the hell is going on?";
	else:
		say "It still hasn't stopped. This can't be real... None of this can be real. What is happening? Where am I? Is there a message to any of this? I don't care, I NEED TO WAKE UP!".
		
every turn:
	showme the SpinCount.

Test me with "look / examine bed frame / examine mattress / examine table / examine dreidel / take dreidel / spin dreidel".