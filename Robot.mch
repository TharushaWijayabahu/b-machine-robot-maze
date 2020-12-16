/* Robot
 * Author: ASUS
 * Creation date: 12/16/2020
 */
MACHINE
    Robot
    
    INCLUDES
        Maze
    
    PROMOTES
        getPosition, visitedSquare, foundExit, getRoute

    SETS
        DIRECTIONS = {
            North, 
            South, 
            East, 
            West
        };
        
        STATE_MESSAGES = {
            Moved_to_North,
            Moved_to_East,
            Moved_to_West,
            Moved_to_South,
            Cannot_Move_Internal_Wall_Detected,
            Cannot_Move_External_Wall_Detected,
            Successfully_Teleported,
            Cannot_Teleport_to_same_square,
            Cannot_Directly_Teleport_to_Exit_on_Start,
            Cannot_Teleport_Internal_Wall_Detected
        }

    VARIABLES
        robot_x_coordinate,
        robot_y_coordinate,
        visited_derection
        
    INVARIANT
        robot_x_coordinate : NATURAL1 &
        robot_y_coordinate : NATURAL1 &
        visited_derection : seq(DIRECTIONS)
        
    INITIALISATION
        robot_x_coordinate, robot_y_coordinate, visited_derection := 1, 1, []

    DEFINITIONS

        //Animation Functions
        ANIMATION_FUNCTION == ({ y, x, i | x : X_Coordinate & y : Y_Coordinate & i=0 });
        ANIMATION_FUNCTION1 == ({ y, x, i | x : X_Coordinate & y : Y_Coordinate  & i=1 & (x, 6-y) : Walls });
        ANIMATION_FUNCTION2 == ({ y, x, i | x: X_Coordinate & y : Y_Coordinate & i = 2 & x = robot_x_coordinate & y = (6 - robot_y_coordinate) });
        
        //Grid Images
        ANIMATION_IMG0 == "Images/white.gif";
        ANIMATION_IMG1 == "Images/black.gif";
        ANIMATION_IMG2 == "Images/robot.gif";
        
    OPERATIONS
        //Moving robot to the North
        result <-- moveNorth  =
                IF
                    (robot_x_coordinate |-> robot_y_coordinate + 1) /: Walls &
                    (robot_y_coordinate + 1 : Y_Coordinate)
                THEN
                    robot_y_coordinate := robot_y_coordinate + 1 ||
                    visited_derection := visited_derection <- North ||
                    update(robot_x_coordinate, robot_y_coordinate + 1, visited_route <- (robot_x_coordinate |-> robot_y_coordinate)) ||
                    result := Moved_to_North
                ELSIF
                    (robot_y_coordinate + 1 /: Y_Coordinate)
                THEN
                    result := Cannot_Move_External_Wall_Detected
                ELSE
                    result := Cannot_Move_Internal_Wall_Detected
       END;
       
       //Moving robot to the East
        result <-- moveEast  =
                IF
                    (robot_x_coordinate + 1 |-> robot_y_coordinate) /: Walls &
                    (robot_x_coordinate + 1 : X_Coordinate)
                THEN
                    robot_x_coordinate := robot_x_coordinate + 1 ||
                    visited_derection := visited_derection <- East ||
                    update(robot_x_coordinate + 1, robot_y_coordinate, visited_route <- (robot_x_coordinate |-> robot_y_coordinate)) ||
                    result := Moved_to_East
                ELSIF
                    (robot_x_coordinate + 1 /: X_Coordinate)
                THEN
                    result := Cannot_Move_External_Wall_Detected
                ELSE
                    result := Cannot_Move_Internal_Wall_Detected
       END;
       //Moving robot to the South
        result <-- moveSouth  =
                IF
                    (robot_x_coordinate |-> robot_y_coordinate - 1) /: Walls &
                    (robot_y_coordinate - 1 : Y_Coordinate)
                THEN
                    robot_y_coordinate := robot_y_coordinate - 1 ||
                    visited_derection := visited_derection <- South ||
                    update(robot_x_coordinate, robot_y_coordinate - 1, visited_route <- (robot_x_coordinate |-> robot_y_coordinate)) ||
                    result := Moved_to_South
                ELSIF
                    (robot_y_coordinate - 1 /: Y_Coordinate)
                THEN
                    result := Cannot_Move_External_Wall_Detected
                ELSE
                    result := Cannot_Move_Internal_Wall_Detected
       END;
       
       //Moving robot to the West
        result <-- moveWest  =
                IF
                    (robot_x_coordinate - 1 |-> robot_y_coordinate) /: Walls &
                    (robot_x_coordinate - 1 : X_Coordinate)
                THEN
                    robot_x_coordinate := robot_x_coordinate - 1 ||
                    visited_derection := visited_derection <- East ||
                    update(robot_x_coordinate - 1, robot_y_coordinate, visited_route <- (robot_x_coordinate |-> robot_y_coordinate)) ||
                    result := Moved_to_West
                ELSIF
                    (robot_x_coordinate - 1 /: X_Coordinate)
                THEN
                    result := Cannot_Move_External_Wall_Detected
                ELSE
                    result := Cannot_Move_Internal_Wall_Detected
       END;
       
       //Teleportation
       result <-- teleport (x_point , y_point) = 
           PRE
               x_point : X_Coordinate &
               y_point : Y_Coordinate
           THEN
               IF
                   (x_point |-> y_point) = (robot_x_coordinate |-> robot_y_coordinate)
               THEN
                   result := Cannot_Teleport_to_same_square
               ELSIF 
                   ({(x_point |-> y_point)} = Exit_Square &
                   {(robot_x_coordinate |-> robot_y_coordinate)} = Entrance_Square)
               THEN
                   result := Cannot_Directly_Teleport_to_Exit_on_Start
                       
               ELSIF
                   ((x_point |-> y_point) : Walls)
                   THEN
                       result := Cannot_Teleport_Internal_Wall_Detected
               ELSE
                   robot_x_coordinate := x_point ||
                   robot_y_coordinate := y_point ||
                   update(x_point, y_point, visited_route <- (robot_x_coordinate |-> robot_y_coordinate)) ||
                   result := Successfully_Teleported
               END
           END


END
