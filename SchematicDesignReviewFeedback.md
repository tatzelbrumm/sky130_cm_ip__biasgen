# Schematic design review, 27 March 2024

* Please use the level shifter from HVL lib if possible
* Please compte sizing and specification of block.
* Does not need to be uniquely matched to each block customer. Do need to be aware of customer sets
* Specific example of a numeric artifact in sim results was shown
Can you provide that testcase for us to work on understanding
* Highest speed analog operation is at 20Mhz and therefore setttling timesf or bias enables shorter than a few 10s of nS do not matter in real operaton
* Corners, PVT, Montecarlo, Mismatch
* Need a compliance spec deifintiion
