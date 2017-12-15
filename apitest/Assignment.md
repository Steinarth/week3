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

The push and pop functions adds function operations to an array and removes and runs them sequentially, if we would not have them we would have to use another slower method like loops to run each one in a specific order.

### tic-tac-toe-game-player.js : Sequential code

#### Assignment: Explain how this apparently sequential code can function to play *two* sides of the game. ####

Because this code uses asynchronous method we use 'then' function to wait for and verify that userB has completed its turn before userA can make it's turn.

### tic-tac-toe-game-player.js : Failing load tests

#### Assignment: Run load tests. See them succeed a couple of times. Run load tests again. They should fail. Explain why they fail. ####

After doing everything the assignment asked us to do, and trying some strange variations the load test did not fail, so there is nothing more to do here.

### tictactoe.loadtest.js

#### Assignment Find appropriate numbers to configure the load test so it passes on your buildserver under normal load. ####

We found out that we could finish 30 games in 1 second on our personal computer.  
And was able to finish 15 games in 1 second on our build server.
