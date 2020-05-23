INCLUDE Exploring
VAR health = 45
VAR gold = 1
VAR weapon = "old sword"
VAR anna_trust = 5
VAR anna_health = 65
VAR can_see = true
VAR loudness = 0


LIST party = Dax, (Anna), Aric
LIST equipment = (torch) , (potion) 

{party}
-> Entrance 
=== Entrance ===
"We're here..." Anna says, her tone shakier than usual. In front of you, is a small hole in the ground, granit steps leading down. Next to it, a stick dangling the skeletal remains of the last adventurer to enter here.
->first_choice
=== first_choice
*  Enter 
    -> first_step
* Check Equipment 
    You check, for a final time, your load out. You have with you {equipment}, and an {weapon}.
    ~ anna_trust += 1
    -> first_choice
*  (turnback) [Turn Back] 
    -> falter

==falter
"Anna- I'm not so sure this is a good idea... maybe we should turn back."
Anna retrieved a thin piece of twine from her pocket, then pealed back her wet hair into a makeshift pony tail.
"Sure, why don't you head back to the pub and have a drink- oh wait. We're broke. That's why we're hear remember?" The shakiness was gone, frustration taking it's place. 
~ anna_trust -= 1
-> first_step

=== first_step
"Welp," you reply, "lets get on with it." As you make your way into the cave, the humid air from the jungle outside begins to lighten. In it's place, the smell of soil, and eventually a cool draft. By the time you reach the final step, it's pitch black.
~ can_see = false
* Light torch
    "Good thing we brought this," you say as you strike the flint with your sword, the sharp sound reverberting down the tunnel wall.
    ~can_see = true
    ~loudness += 2
* Follow along the wall 
    "Let's hold off on the torch for now," you say as you reach for the wall next to you.
    "Good idea," Anna replies, "Probably best to keep a low profile." 
    ~anna_trust +=1

- {can_see: Tourch in hand, | Groping the wall,} you make your way deeper into the goblin cave. 
* Continue 
# CLEAR
-> Exploring


->END