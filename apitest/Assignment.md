API Tests / Load tests
=======

## test-api.js ##
#### Assignment: Trace this call - back and forth - through the code. ####

Orders of function calls:
1. waitForCleanDatabase
2. cleanDatabase
3. whenDoneWaiting
4. disconnect

### user-api.js
#### Assignment: Explain what the push/pop functions do for this API. What effect would it have on the fluent API if we did not have them? ####

TODO

## chat.spec.js ##

#### There is a weak race condition here. Why ? ####

todo

#### There is no race condition here. Why ? ####

todo

### tic-tac-toe-game-player.js : Sequential code

#### Assignment: Explain how this apparently sequential code can function to play *two* sides of the game. ####

todo

### tic-tac-toe-game-player.js : Failing load tests

#### Assignment: Run load tests. See them succeed a couple of times. Run load tests again. They should fail. Explain why they fail. ####

After doing everything the assignment asked me to do, and trying some strange variations the load test did not fail, so there is nothing more to do here

### tictactoe.loadtest.js

#### Find appropriate numbers to configure the load test so it passes on your buildserver under normal load. ####

I found out that i could finish 30 games in 1 second on my personal computer.  
And was able to finish XXX games in 1 second on my build server.
