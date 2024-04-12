"Isolated Chamber" by "Filip Conic"


The Chamber is a room. "You jolt up at the sound thunder. You find yourself on a bare raggedy mattress that looks about 100 years old. The mattress is sitting on a metal bed frame. The room around you isn't any nicer than the bed. Plain grey concrete everywhere you look, except for the tiny spotlight in the middle of the ceiling allowing in the scarce bit of light provided by the rainy and overcast day. On the other side of the room you see another plain metal table. Woohoo, how exciting!"

[Object Definitions]
The metal bed frame is in the Chamber. The description of the metal bed frame is "An old metal bed frame half rusted away. Seems like it's bolted to the floor and hasn't moved in decades."

The raggedy old mattress is on the metal bed frame. The description of the raggedy old mattress is "This mattress has seen better days. It's thin, torn, and the stuffing's is coming out... wait are those brown spots moving?"

The metal table is in the Chamber. The description of the metal table is "Ahh another beautiful piece of contemporary furniture. The mostly rusted plain metal table."

The old wooden dreidel is on the metal table. The description of the old wooden dreidel is "An intricately carved dreidel, with gold color inscriptions that seem to shimmer a rainbow in the little bit of light provided by the room light. The inscriptions are beautiful but they're definitely not anything you've seen before. ".
The old wooden dreidel has a truth state called rotating. The rotating of the old wooden dreidel is false.

[Bed Frame and Table Rules]
Instead of taking or pushing or pulling the metal bed frame, say "It was a valiant effort but it's definitely bolted to the floor. There's no moving it."

Instead of taking or pushing or pulling the metal table, say "You try as hard as you can to move the table but it won't budge. Whew that got you a little winded, maybe that exercise program your wife was telling you about wasn't the worst idea."

[Mattress Rules]
Instead of taking the raggedy old mattress, say "Yeah those brown spots are bed bugs, you don't wanna be touching the mattress."

[Dreidel/Spinning rules]
After examining the old wooden dreidel:
    say "Seems like the only redeeming quality of this depressing ass room.".

Before spinning the old wooden dreidel:
	if the player does not have the old wooden dreidel:
		say "Well you can't do that by looking at it." instead.

Spinning is an action applying to one thing. 
Understand "spin [something]" as spinning.

Check spinning:
	if the noun is not the old wooden dreidel:
		say "Kind of a big object to be spinning don't you think?" instead.

Carry out spinning the old wooden dreidel:
	now rotating of the old wooden dreidel is true.
	
Report spinning the dreidel:
	if rotating of the old wooden dreidel is true:
		say "The dreidel spins gracefully on the metal table's surface. You watch it for a while but it doesn't seem to be slowing down."
		
every turn:
	showme the rotating of the old wooden dreidel.

Test me with "look / examine bed frame / examine mattress / examine table / examine dreidel / take dreidel / spin dreidel".