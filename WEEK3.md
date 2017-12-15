Student emails : johannaj16, steinart16
Url to Jenkins : http://ec2-35-177-51-204.eu-west-2.compute.amazonaws.com:8080/job/week3-hgop/  
Url to TicTacToe instance: http://ec2-52-56-90-167.eu-west-2.compute.amazonaws.com:8080

Public url to Datadog : https://p.datadoghq.com/sb/0f4735e57-017f27a520

List of things completed:

1. #### Completed the migrations needed for the application to work
    By using node's db-migrate, we were able to create a database migration script relatively easily.  

2. #### On Git push Jenkins pulls my code and the Tic Tac Toe application is deployed through a build pipeline, but only if all my tests are successful
    All good.
    
3. #### Filled out the Assignments: for the API and Load tests
    Answers here: [API and Load test assignment](apitest/Assignment.md)

4. #### The API and Load test run in my build pipeline on Jenkins and everything is cleaned up afterwards

    After we run startserver, and run load/api tests we kill the process.
5. #### My test reports are published in Jenkins

    Yes they can be found under the Latest test report link on Jenkins.
6. #### My Tic Tac Toe game works, two people can play a game till the end and be notified who won.
    Yes, all good.

7. #### My TicCell is tested
    Yes it is tested, but we did not understand how to test if the board renders without errors.

8. #### I've set up Datadog
    Everything works.
