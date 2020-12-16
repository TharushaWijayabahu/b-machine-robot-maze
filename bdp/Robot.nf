Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Robot))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Robot))==(Machine(Robot));
  Level(Machine(Robot))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Robot)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Robot))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Robot))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Robot))==(Maze);
  List_Includes(Machine(Robot))==(Maze)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Robot))==(getPosition,visitedSquare,foundExit,getRoute)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Robot))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Robot))==(?);
  Context_List_Variables(Machine(Robot))==(?);
  Abstract_List_Variables(Machine(Robot))==(?);
  Local_List_Variables(Machine(Robot))==(visited_derection,robot_path,robot_y_coordinate,robot_x_coordinate);
  List_Variables(Machine(Robot))==(visited_derection,robot_path,robot_y_coordinate,robot_x_coordinate,visited_y_coordinate,visited_x_coordinate,visited_route);
  External_List_Variables(Machine(Robot))==(visited_derection,robot_path,robot_y_coordinate,robot_x_coordinate,visited_y_coordinate,visited_x_coordinate,visited_route)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Robot))==(?);
  Abstract_List_VisibleVariables(Machine(Robot))==(?);
  External_List_VisibleVariables(Machine(Robot))==(?);
  Expanded_List_VisibleVariables(Machine(Robot))==(?);
  List_VisibleVariables(Machine(Robot))==(?);
  Internal_List_VisibleVariables(Machine(Robot))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Robot))==(btrue);
  Gluing_List_Invariant(Machine(Robot))==(btrue);
  Abstract_List_Invariant(Machine(Robot))==(btrue);
  Expanded_List_Invariant(Machine(Robot))==(visited_route: seq(NAT1*NAT1) & visited_x_coordinate: NAT1 & visited_y_coordinate: NAT1);
  Context_List_Invariant(Machine(Robot))==(btrue);
  List_Invariant(Machine(Robot))==(robot_x_coordinate: NAT1 & robot_y_coordinate: NAT1 & robot_path: seq(NAT1*NAT1) & visited_derection: seq(DIRECTIONS))
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Robot))==(btrue);
  Expanded_List_Assertions(Machine(Robot))==(btrue);
  Context_List_Assertions(Machine(Robot))==(btrue);
  List_Assertions(Machine(Robot))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Robot))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Robot))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Robot))==(visited_route,visited_x_coordinate,visited_y_coordinate:=<>,1,1;robot_x_coordinate,robot_y_coordinate,robot_path,visited_derection:=1,1,<>,<>);
  Context_List_Initialisation(Machine(Robot))==(skip);
  List_Initialisation(Machine(Robot))==(robot_x_coordinate,robot_y_coordinate,robot_path,visited_derection:=1,1,<>,<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Robot))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Robot),Machine(Maze))==(?)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Robot),Machine(Maze))==(btrue);
  List_Context_Constraints(Machine(Robot))==(btrue);
  List_Constraints(Machine(Robot))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Robot))==(moveNorth,moveEast,moveSouth,moveWest,teleport,getPosition,visitedSquare,foundExit,getRoute);
  List_Operations(Machine(Robot))==(moveNorth,moveEast,moveSouth,moveWest,teleport,getPosition,visitedSquare,foundExit,getRoute)
END
&
THEORY ListInputX IS
  List_Input(Machine(Robot),getRoute)==(?);
  List_Input(Machine(Robot),foundExit)==(?);
  List_Input(Machine(Robot),visitedSquare)==(xPoint,yPoint);
  List_Input(Machine(Robot),getPosition)==(?);
  List_Input(Machine(Robot),moveNorth)==(?);
  List_Input(Machine(Robot),moveEast)==(?);
  List_Input(Machine(Robot),moveSouth)==(?);
  List_Input(Machine(Robot),moveWest)==(?);
  List_Input(Machine(Robot),teleport)==(x_point,y_point)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Robot),getRoute)==(route);
  List_Output(Machine(Robot),foundExit)==(exitFound);
  List_Output(Machine(Robot),visitedSquare)==(hasVisitedSquare);
  List_Output(Machine(Robot),getPosition)==(currentPosition);
  List_Output(Machine(Robot),moveNorth)==(result);
  List_Output(Machine(Robot),moveEast)==(result);
  List_Output(Machine(Robot),moveSouth)==(result);
  List_Output(Machine(Robot),moveWest)==(result);
  List_Output(Machine(Robot),teleport)==(result)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Robot),getRoute)==(route <-- getRoute);
  List_Header(Machine(Robot),foundExit)==(exitFound <-- foundExit);
  List_Header(Machine(Robot),visitedSquare)==(hasVisitedSquare <-- visitedSquare(xPoint,yPoint));
  List_Header(Machine(Robot),getPosition)==(currentPosition <-- getPosition);
  List_Header(Machine(Robot),moveNorth)==(result <-- moveNorth);
  List_Header(Machine(Robot),moveEast)==(result <-- moveEast);
  List_Header(Machine(Robot),moveSouth)==(result <-- moveSouth);
  List_Header(Machine(Robot),moveWest)==(result <-- moveWest);
  List_Header(Machine(Robot),teleport)==(result <-- teleport(x_point,y_point))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(Robot),getRoute)==(btrue);
  List_Precondition(Machine(Robot),getRoute)==(btrue);
  Own_Precondition(Machine(Robot),foundExit)==(btrue);
  List_Precondition(Machine(Robot),foundExit)==(btrue);
  Own_Precondition(Machine(Robot),visitedSquare)==(xPoint: X_Coordinate & yPoint: Y_Coordinate);
  List_Precondition(Machine(Robot),visitedSquare)==(xPoint: X_Coordinate & yPoint: Y_Coordinate);
  Own_Precondition(Machine(Robot),getPosition)==(btrue);
  List_Precondition(Machine(Robot),getPosition)==(btrue);
  List_Precondition(Machine(Robot),moveNorth)==(btrue);
  List_Precondition(Machine(Robot),moveEast)==(btrue);
  List_Precondition(Machine(Robot),moveSouth)==(btrue);
  List_Precondition(Machine(Robot),moveWest)==(btrue);
  List_Precondition(Machine(Robot),teleport)==(x_point: X_Coordinate & y_point: Y_Coordinate)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Robot),teleport)==(x_point: X_Coordinate & y_point: Y_Coordinate | x_point|->y_point = robot_x_coordinate|->robot_y_coordinate ==> result:=Cannot_Teleport_to_same_square [] not(x_point|->y_point = robot_x_coordinate|->robot_y_coordinate) ==> (x_point|->y_point/:Exit_Square & x_point|->y_point/:Walls or robot_x_coordinate|->robot_y_coordinate/:Entrance_Square ==> (x_point: X_Coordinate & y_point: Y_Coordinate & robot_path<-(robot_x_coordinate|->robot_y_coordinate): seq(INTEGER*INTEGER) | robot_x_coordinate,robot_y_coordinate,robot_path:=x_point,y_point,robot_path<-(robot_x_coordinate|->robot_y_coordinate) || visited_route,visited_x_coordinate,visited_y_coordinate:=robot_path<-(robot_x_coordinate|->robot_y_coordinate),x_point,y_point || result:=Successfully_Teleported) [] not(x_point|->y_point/:Exit_Square & x_point|->y_point/:Walls or robot_x_coordinate|->robot_y_coordinate/:Entrance_Square) ==> (x_point|->y_point: Walls ==> result:=Cannot_Teleport_Internal_Wall_Detected [] not(x_point|->y_point: Walls) ==> result:=Cannot_Directly_Teleport_to_Exit_on_Start)));
  Expanded_List_Substitution(Machine(Robot),moveWest)==(btrue | robot_x_coordinate-1|->robot_y_coordinate/:Walls & robot_x_coordinate-1: X_Coordinate ==> (robot_x_coordinate-1: X_Coordinate & robot_y_coordinate: Y_Coordinate & robot_path<-(robot_x_coordinate|->robot_y_coordinate): seq(INTEGER*INTEGER) | robot_x_coordinate,robot_path,visited_derection:=robot_x_coordinate-1,robot_path<-(robot_x_coordinate|->robot_y_coordinate),visited_derection<-East || visited_route,visited_x_coordinate,visited_y_coordinate:=robot_path<-(robot_x_coordinate|->robot_y_coordinate),robot_x_coordinate-1,robot_y_coordinate || result:=Moved_to_West) [] not(robot_x_coordinate-1|->robot_y_coordinate/:Walls & robot_x_coordinate-1: X_Coordinate) ==> (robot_x_coordinate-1/:X_Coordinate ==> result:=Cannot_Move_External_Wall_Detected [] not(robot_x_coordinate-1/:X_Coordinate) ==> result:=Cannot_Move_Internal_Wall_Detected));
  Expanded_List_Substitution(Machine(Robot),moveSouth)==(btrue | robot_x_coordinate|->robot_y_coordinate-1/:Walls & robot_y_coordinate-1: Y_Coordinate ==> (robot_x_coordinate: X_Coordinate & robot_y_coordinate-1: Y_Coordinate & robot_path<-(robot_x_coordinate|->robot_y_coordinate): seq(INTEGER*INTEGER) | robot_y_coordinate,robot_path,visited_derection:=robot_y_coordinate-1,robot_path<-(robot_x_coordinate|->robot_y_coordinate),visited_derection<-South || visited_route,visited_x_coordinate,visited_y_coordinate:=robot_path<-(robot_x_coordinate|->robot_y_coordinate),robot_x_coordinate,robot_y_coordinate-1 || result:=Moved_to_South) [] not(robot_x_coordinate|->robot_y_coordinate-1/:Walls & robot_y_coordinate-1: Y_Coordinate) ==> (robot_y_coordinate-1/:Y_Coordinate ==> result:=Cannot_Move_External_Wall_Detected [] not(robot_y_coordinate-1/:Y_Coordinate) ==> result:=Cannot_Move_Internal_Wall_Detected));
  Expanded_List_Substitution(Machine(Robot),moveEast)==(btrue | robot_x_coordinate+1|->robot_y_coordinate/:Walls & robot_x_coordinate+1: X_Coordinate ==> (robot_x_coordinate+1: X_Coordinate & robot_y_coordinate: Y_Coordinate & robot_path<-(robot_x_coordinate|->robot_y_coordinate): seq(INTEGER*INTEGER) | robot_x_coordinate,robot_path,visited_derection:=robot_x_coordinate+1,robot_path<-(robot_x_coordinate|->robot_y_coordinate),visited_derection<-East || visited_route,visited_x_coordinate,visited_y_coordinate:=robot_path<-(robot_x_coordinate|->robot_y_coordinate),robot_x_coordinate+1,robot_y_coordinate || result:=Moved_to_East) [] not(robot_x_coordinate+1|->robot_y_coordinate/:Walls & robot_x_coordinate+1: X_Coordinate) ==> (robot_x_coordinate+1/:X_Coordinate ==> result:=Cannot_Move_External_Wall_Detected [] not(robot_x_coordinate+1/:X_Coordinate) ==> result:=Cannot_Move_Internal_Wall_Detected));
  Expanded_List_Substitution(Machine(Robot),moveNorth)==(btrue | robot_x_coordinate|->robot_y_coordinate+1/:Walls & robot_y_coordinate+1: Y_Coordinate ==> (robot_x_coordinate: X_Coordinate & robot_y_coordinate+1: Y_Coordinate & robot_path<-(robot_x_coordinate|->robot_y_coordinate): seq(INTEGER*INTEGER) | robot_y_coordinate,robot_path,visited_derection:=robot_y_coordinate+1,robot_path<-(robot_x_coordinate|->robot_y_coordinate),visited_derection<-North || visited_route,visited_x_coordinate,visited_y_coordinate:=robot_path<-(robot_x_coordinate|->robot_y_coordinate),robot_x_coordinate,robot_y_coordinate+1 || result:=Moved_to_North) [] not(robot_x_coordinate|->robot_y_coordinate+1/:Walls & robot_y_coordinate+1: Y_Coordinate) ==> (robot_y_coordinate+1/:Y_Coordinate ==> result:=Cannot_Move_External_Wall_Detected [] not(robot_y_coordinate+1/:Y_Coordinate) ==> result:=Cannot_Move_Internal_Wall_Detected));
  List_Substitution(Machine(Robot),getRoute)==(route:=visited_route);
  Expanded_List_Substitution(Machine(Robot),getRoute)==(btrue | route:=visited_route);
  List_Substitution(Machine(Robot),foundExit)==(IF visited_x_coordinate|->visited_y_coordinate: Exit_Square THEN exitFound:=Yes ELSE exitFound:=No END);
  Expanded_List_Substitution(Machine(Robot),foundExit)==(btrue | visited_x_coordinate|->visited_y_coordinate: Exit_Square ==> exitFound:=Yes [] not(visited_x_coordinate|->visited_y_coordinate: Exit_Square) ==> exitFound:=No);
  List_Substitution(Machine(Robot),visitedSquare)==(IF xPoint|->yPoint: ran(visited_route) THEN hasVisitedSquare:=Yes ELSE hasVisitedSquare:=No END);
  Expanded_List_Substitution(Machine(Robot),visitedSquare)==(xPoint: X_Coordinate & yPoint: Y_Coordinate | xPoint|->yPoint: ran(visited_route) ==> hasVisitedSquare:=Yes [] not(xPoint|->yPoint: ran(visited_route)) ==> hasVisitedSquare:=No);
  List_Substitution(Machine(Robot),getPosition)==(currentPosition:=visited_x_coordinate|->visited_y_coordinate);
  Expanded_List_Substitution(Machine(Robot),getPosition)==(btrue | currentPosition:=visited_x_coordinate|->visited_y_coordinate);
  List_Substitution(Machine(Robot),moveNorth)==(IF robot_x_coordinate|->robot_y_coordinate+1/:Walls & robot_y_coordinate+1: Y_Coordinate THEN robot_y_coordinate:=robot_y_coordinate+1 || robot_path:=robot_path<-(robot_x_coordinate|->robot_y_coordinate) || visited_derection:=visited_derection<-North || update(robot_x_coordinate,robot_y_coordinate+1,robot_path<-(robot_x_coordinate|->robot_y_coordinate)) || result:=Moved_to_North ELSIF robot_y_coordinate+1/:Y_Coordinate THEN result:=Cannot_Move_External_Wall_Detected ELSE result:=Cannot_Move_Internal_Wall_Detected END);
  List_Substitution(Machine(Robot),moveEast)==(IF robot_x_coordinate+1|->robot_y_coordinate/:Walls & robot_x_coordinate+1: X_Coordinate THEN robot_x_coordinate:=robot_x_coordinate+1 || robot_path:=robot_path<-(robot_x_coordinate|->robot_y_coordinate) || visited_derection:=visited_derection<-East || update(robot_x_coordinate+1,robot_y_coordinate,robot_path<-(robot_x_coordinate|->robot_y_coordinate)) || result:=Moved_to_East ELSIF robot_x_coordinate+1/:X_Coordinate THEN result:=Cannot_Move_External_Wall_Detected ELSE result:=Cannot_Move_Internal_Wall_Detected END);
  List_Substitution(Machine(Robot),moveSouth)==(IF robot_x_coordinate|->robot_y_coordinate-1/:Walls & robot_y_coordinate-1: Y_Coordinate THEN robot_y_coordinate:=robot_y_coordinate-1 || robot_path:=robot_path<-(robot_x_coordinate|->robot_y_coordinate) || visited_derection:=visited_derection<-South || update(robot_x_coordinate,robot_y_coordinate-1,robot_path<-(robot_x_coordinate|->robot_y_coordinate)) || result:=Moved_to_South ELSIF robot_y_coordinate-1/:Y_Coordinate THEN result:=Cannot_Move_External_Wall_Detected ELSE result:=Cannot_Move_Internal_Wall_Detected END);
  List_Substitution(Machine(Robot),moveWest)==(IF robot_x_coordinate-1|->robot_y_coordinate/:Walls & robot_x_coordinate-1: X_Coordinate THEN robot_x_coordinate:=robot_x_coordinate-1 || robot_path:=robot_path<-(robot_x_coordinate|->robot_y_coordinate) || visited_derection:=visited_derection<-East || update(robot_x_coordinate-1,robot_y_coordinate,robot_path<-(robot_x_coordinate|->robot_y_coordinate)) || result:=Moved_to_West ELSIF robot_x_coordinate-1/:X_Coordinate THEN result:=Cannot_Move_External_Wall_Detected ELSE result:=Cannot_Move_Internal_Wall_Detected END);
  List_Substitution(Machine(Robot),teleport)==(IF x_point|->y_point = robot_x_coordinate|->robot_y_coordinate THEN result:=Cannot_Teleport_to_same_square ELSIF x_point|->y_point/:Exit_Square & x_point|->y_point/:Walls or robot_x_coordinate|->robot_y_coordinate/:Entrance_Square THEN robot_x_coordinate:=x_point || robot_y_coordinate:=y_point || robot_path:=robot_path<-(robot_x_coordinate|->robot_y_coordinate) || update(x_point,y_point,robot_path<-(robot_x_coordinate|->robot_y_coordinate)) || result:=Successfully_Teleported ELSIF x_point|->y_point: Walls THEN result:=Cannot_Teleport_Internal_Wall_Detected ELSE result:=Cannot_Directly_Teleport_to_Exit_on_Start END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Robot))==(X_Coordinate,Y_Coordinate,Entrance_Square,Exit_Square,Walls);
  Inherited_List_Constants(Machine(Robot))==(X_Coordinate,Y_Coordinate,Entrance_Square,Exit_Square,Walls);
  List_Constants(Machine(Robot))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Robot),OUTPUT_MESSAGE)==({Yes,No});
  Context_List_Enumerated(Machine(Robot))==(?);
  Context_List_Defered(Machine(Robot))==(?);
  Context_List_Sets(Machine(Robot))==(?);
  List_Valuable_Sets(Machine(Robot))==(?);
  Inherited_List_Enumerated(Machine(Robot))==(OUTPUT_MESSAGE);
  Inherited_List_Defered(Machine(Robot))==(?);
  Inherited_List_Sets(Machine(Robot))==(OUTPUT_MESSAGE);
  List_Enumerated(Machine(Robot))==(DIRECTIONS,STATE_MESSAGES);
  List_Defered(Machine(Robot))==(?);
  List_Sets(Machine(Robot))==(DIRECTIONS,STATE_MESSAGES);
  Set_Definition(Machine(Robot),DIRECTIONS)==({North,South,East,West});
  Set_Definition(Machine(Robot),STATE_MESSAGES)==({Moved_to_North,Moved_to_East,Moved_to_West,Moved_to_South,Cannot_Move_Internal_Wall_Detected,Cannot_Move_External_Wall_Detected,Successfully_Teleported,Cannot_Teleport_to_same_square,Cannot_Directly_Teleport_to_Exit_on_Start,Cannot_Teleport_Internal_Wall_Detected})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Robot))==(?);
  Expanded_List_HiddenConstants(Machine(Robot))==(?);
  List_HiddenConstants(Machine(Robot))==(?);
  External_List_HiddenConstants(Machine(Robot))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Robot))==(btrue);
  Context_List_Properties(Machine(Robot))==(btrue);
  Inherited_List_Properties(Machine(Robot))==(X_Coordinate <: NAT1 & X_Coordinate = 1..7 & Y_Coordinate <: NAT1 & Y_Coordinate = 1..5 & Entrance_Square: NAT1 <-> NAT1 & Entrance_Square = {1|->1} & Exit_Square: NAT1 <-> NAT1 & Exit_Square = {1|->5} & Walls: NAT1 <-> NAT1 & Walls = {1|->3,2|->1,2|->3,2|->5,3|->3,4|->2,4|->3,4|->4,6|->1,6|->2,6|->4,7|->4} & OUTPUT_MESSAGE: FIN(INTEGER) & not(OUTPUT_MESSAGE = {}));
  List_Properties(Machine(Robot))==(DIRECTIONS: FIN(INTEGER) & not(DIRECTIONS = {}) & STATE_MESSAGES: FIN(INTEGER) & not(STATE_MESSAGES = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Robot),getRoute)==(?);
  List_ANY_Var(Machine(Robot),foundExit)==(?);
  List_ANY_Var(Machine(Robot),visitedSquare)==(?);
  List_ANY_Var(Machine(Robot),getPosition)==(?);
  List_ANY_Var(Machine(Robot),moveNorth)==(?);
  List_ANY_Var(Machine(Robot),moveEast)==(?);
  List_ANY_Var(Machine(Robot),moveSouth)==(?);
  List_ANY_Var(Machine(Robot),moveWest)==(?);
  List_ANY_Var(Machine(Robot),teleport)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Robot)) == (DIRECTIONS,STATE_MESSAGES,North,South,East,West,Moved_to_North,Moved_to_East,Moved_to_West,Moved_to_South,Cannot_Move_Internal_Wall_Detected,Cannot_Move_External_Wall_Detected,Successfully_Teleported,Cannot_Teleport_to_same_square,Cannot_Directly_Teleport_to_Exit_on_Start,Cannot_Teleport_Internal_Wall_Detected | X_Coordinate,Y_Coordinate,Entrance_Square,Exit_Square,Walls,OUTPUT_MESSAGE,Yes,No | visited_derection,robot_path,robot_y_coordinate,robot_x_coordinate | V,visited_y_coordinate,visited_x_coordinate,visited_route | moveNorth,moveEast,moveSouth,moveWest,teleport | getPosition,visitedSquare,foundExit,getRoute | included(Machine(Maze)) | ? | Robot);
  List_Of_HiddenCst_Ids(Machine(Robot)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Robot)) == (X_Coordinate,Y_Coordinate,Entrance_Square,Exit_Square,Walls);
  List_Of_VisibleVar_Ids(Machine(Robot)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Robot)) == (?: ?);
  List_Of_Ids(Machine(Maze)) == (X_Coordinate,Y_Coordinate,Entrance_Square,Exit_Square,Walls,OUTPUT_MESSAGE,Yes,No | ? | visited_y_coordinate,visited_x_coordinate,visited_route | ? | getPosition,visitedSquare,foundExit,getRoute,update | ? | ? | ? | Maze);
  List_Of_HiddenCst_Ids(Machine(Maze)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Maze)) == (X_Coordinate,Y_Coordinate,Entrance_Square,Exit_Square,Walls);
  List_Of_VisibleVar_Ids(Machine(Maze)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Maze)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Robot)) == (Type(OUTPUT_MESSAGE) == Cst(SetOf(etype(OUTPUT_MESSAGE,0,1)));Type(DIRECTIONS) == Cst(SetOf(etype(DIRECTIONS,0,3)));Type(STATE_MESSAGES) == Cst(SetOf(etype(STATE_MESSAGES,0,9))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Robot)) == (Type(Walls) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(Exit_Square) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(Entrance_Square) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(Y_Coordinate) == Cst(SetOf(btype(INTEGER,"[Y_Coordinate","]Y_Coordinate")));Type(X_Coordinate) == Cst(SetOf(btype(INTEGER,"[X_Coordinate","]X_Coordinate")));Type(No) == Cst(etype(OUTPUT_MESSAGE,0,1));Type(Yes) == Cst(etype(OUTPUT_MESSAGE,0,1));Type(North) == Cst(etype(DIRECTIONS,0,3));Type(South) == Cst(etype(DIRECTIONS,0,3));Type(East) == Cst(etype(DIRECTIONS,0,3));Type(West) == Cst(etype(DIRECTIONS,0,3));Type(Moved_to_North) == Cst(etype(STATE_MESSAGES,0,9));Type(Moved_to_East) == Cst(etype(STATE_MESSAGES,0,9));Type(Moved_to_West) == Cst(etype(STATE_MESSAGES,0,9));Type(Moved_to_South) == Cst(etype(STATE_MESSAGES,0,9));Type(Cannot_Move_Internal_Wall_Detected) == Cst(etype(STATE_MESSAGES,0,9));Type(Cannot_Move_External_Wall_Detected) == Cst(etype(STATE_MESSAGES,0,9));Type(Successfully_Teleported) == Cst(etype(STATE_MESSAGES,0,9));Type(Cannot_Teleport_to_same_square) == Cst(etype(STATE_MESSAGES,0,9));Type(Cannot_Directly_Teleport_to_Exit_on_Start) == Cst(etype(STATE_MESSAGES,0,9));Type(Cannot_Teleport_Internal_Wall_Detected) == Cst(etype(STATE_MESSAGES,0,9)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Robot)) == (Type(visited_route) == Mvl(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(visited_x_coordinate) == Mvl(btype(INTEGER,?,?));Type(visited_y_coordinate) == Mvl(btype(INTEGER,?,?));Type(visited_derection) == Mvl(SetOf(btype(INTEGER,?,?)*etype(DIRECTIONS,?,?)));Type(robot_path) == Mvl(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(robot_y_coordinate) == Mvl(btype(INTEGER,?,?));Type(robot_x_coordinate) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Robot)) == (Type(getPosition) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(visitedSquare) == Cst(etype(OUTPUT_MESSAGE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(foundExit) == Cst(etype(OUTPUT_MESSAGE,?,?),No_type);Type(getRoute) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(teleport) == Cst(etype(STATE_MESSAGES,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(moveWest) == Cst(etype(STATE_MESSAGES,?,?),No_type);Type(moveSouth) == Cst(etype(STATE_MESSAGES,?,?),No_type);Type(moveEast) == Cst(etype(STATE_MESSAGES,?,?),No_type);Type(moveNorth) == Cst(etype(STATE_MESSAGES,?,?),No_type));
  Observers(Machine(Robot)) == (Type(getPosition) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(visitedSquare) == Cst(etype(OUTPUT_MESSAGE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(foundExit) == Cst(etype(OUTPUT_MESSAGE,?,?),No_type);Type(getRoute) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
