VAR health = 45
VAR gold = 1
VAR weapon = "old sword"
LIST party = (Dax), (Anna), (Aric)
VAR anna_trust = 5 //1-10
VAR can_see = true
-> Entrance 
=== Entrance ===
"We're here..." Anna says, her tone shakier than usual. In front of you, is a small hole in the ground, granit steps leading down. Next to it, a stick dangling the skeletal remains of the last adventurer to enter here.

*  Enter 
    -> first_step
*  Turn Back 
    -> falter

==falter
"I- Anna, this is a bad idea. Let's turn back."
Anna pulled a thin piece of rope from her pocket, then pealed back her wet hair into a make shift pony tail.
"Sure, why don't you head back to the pub and have a drink- oh wait. We're broke. That's why we're hear remember?" The shakiness was gone. Replaced with frustration. 
~ anna_trust -= 1
-> first_step

=== first_step
"Welp," you reply, "lets get on with it." As you make your way into the cave, the humid air from the jungle outside begins to lighten. In it's place, the smell of soil, and eventually a cool draft. By the time you reach the final step, it's pitch black.
~ can_see = false
* Light torch
    ~can_see = true
* Follow the wall 

- {can_see: Tourch in hand, | Groping the wall,} you make your way deeper into the goblin cave. 
-> Exploring

=== Exploring
->END