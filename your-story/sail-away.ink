VAR health = 45
VAR gold = 1
VAR weapon = "old sword"
LIST party = Dax, Anna, (Aric)
LIST anna_stats = neutral, tired, irate, happy

-> Jungle

=== Jungle ===
"It's just up ahead," Anna said from behind you. You chop at the brush with your {weapon}. 
* "It better be."
    "I know what I'm talking about," she replies curtly, her sword coming a bit to close to your back as it slices a vine dangling between you.
    ~ anna_stats = irate
* I sure hope so.
    "Good, bout had all I can take of this cursed jungle." you say, your hopes improving.

- Looking up ahead, you can make out a clearing.
* Look around
    -> trail
* March on
    -> clearing

=trail
To your left, you see the same thick jungle you've been hacking through for hours.
    -> impatient
    
=impatient 
{anna_stats.neutral: "The entrace is just on the other side of that clearing up ahead."|anna_stats.irate: "What the hell are you waiting for!?"}
    * {anna_stats.neutral} Keep Looking -> hidden
    * -> clearing

=hidden
    You motion to your right with your {weapon}, "Hey, check that out." Just behind a large oak tree, you can make out the remants recent activity. The lower branches have been cut, but not by you.
    "Shit. Patrols probably. Look pretty fresh too."
    "You said this hole was deserted.."
    "Y-> clearing
=== clearing ===

->END









