/* Maze
 * Author: ASUS
 * Creation date: 12/16/2020
 */
MACHINE
    Maze

    SETS
        OUTPUT_MESSAGE = { Yes , No }

    CONCRETE_CONSTANTS
        X_Coordinate ,
        Y_Coordinate ,
        Entrance_Square ,
        Exit_Square ,
        Walls

    PROPERTIES
        X_Coordinate <: NATURAL1 &
        X_Coordinate = 1 .. 7 &
        Y_Coordinate <: NATURAL1 &
        Y_Coordinate = 1 .. 5 &
        Entrance_Square : NATURAL1 <-> NATURAL1 &
        Entrance_Square = { ( 1 |-> 1 ) } &
        Exit_Square : NATURAL1 <-> NATURAL1 &
        Exit_Square =  { ( 1 |-> 5 ) } &
        Walls : NATURAL1 <-> NATURAL1 &
        Walls = { ( 1 |-> 3 ) , ( 2 |-> 1 ) , ( 2 |-> 3 ) , ( 2 |-> 5 ) , ( 3 |-> 3 ) , ( 4 |-> 2 ) , ( 4 |-> 3 ) , ( 4 |-> 4 ) , ( 6 |-> 1 ) , ( 6 |-> 2 ) , ( 6 |-> 4 ) , ( 7 |-> 4 ) }

    ABSTRACT_VARIABLES
        visited_route ,
        visited_x_coordinate ,
        visited_y_coordinate

    INVARIANT
        visited_route : seq ( NATURAL1 * NATURAL1 ) &
        visited_x_coordinate : NATURAL1 &
        visited_y_coordinate : NATURAL1

    INITIALISATION
        visited_route , visited_x_coordinate , visited_y_coordinate := <> , 1 , 1


    OPERATIONS
        //Get current position
        currentPosition  <-- getPosition =
        BEGIN
           currentPosition := ( visited_x_coordinate |-> visited_y_coordinate )
       END ;

        //Check if the square has already visited or not
        hasVisitedSquare  <-- visitedSquare ( xPoint , yPoint ) =
           PRE
               xPoint : X_Coordinate &
               yPoint : Y_Coordinate
           THEN
               IF
                   ( xPoint |-> yPoint : ran ( visited_route ) )
               THEN
                   hasVisitedSquare := Yes
               ELSE
                   hasVisitedSquare := No
               END
       END ;
        //Check if the robot is currently in the exit square or not
       exitFound  <-- foundExit  =
           IF
               ( ( visited_x_coordinate |-> visited_y_coordinate ) : Exit_Square )
           THEN
               exitFound := Yes
           ELSE
               exitFound := No
        END ;

        //Get route
        route  <-- getRoute  =
           BEGIN
               route := visited_route
       END ;

       //Update all operations
       update ( x_point , y_point , route ) =
       PRE
           x_point : X_Coordinate & y_point : Y_Coordinate & route : seq ( NATURAL1 * NATURAL1 )
       THEN
           visited_route := route ||
           visited_x_coordinate := x_point ||
           visited_y_coordinate := y_point
       END
END
