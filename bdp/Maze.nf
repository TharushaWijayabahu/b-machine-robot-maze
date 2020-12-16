Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Maze))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Maze))==(Machine(Maze));
  Level(Machine(Maze))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Maze)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Maze))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Maze))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Maze))==(?);
  List_Includes(Machine(Maze))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Maze))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Maze))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Maze))==(?);
  Context_List_Variables(Machine(Maze))==(?);
  Abstract_List_Variables(Machine(Maze))==(?);
  Local_List_Variables(Machine(Maze))==(visited_y_coordinate,visited_x_coordinate,visited_route);
  List_Variables(Machine(Maze))==(visited_y_coordinate,visited_x_coordinate,visited_route);
  External_List_Variables(Machine(Maze))==(visited_y_coordinate,visited_x_coordinate,visited_route)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Maze))==(?);
  Abstract_List_VisibleVariables(Machine(Maze))==(?);
  External_List_VisibleVariables(Machine(Maze))==(?);
  Expanded_List_VisibleVariables(Machine(Maze))==(?);
  List_VisibleVariables(Machine(Maze))==(?);
  Internal_List_VisibleVariables(Machine(Maze))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Maze))==(btrue);
  Gluing_List_Invariant(Machine(Maze))==(btrue);
  Expanded_List_Invariant(Machine(Maze))==(btrue);
  Abstract_List_Invariant(Machine(Maze))==(btrue);
  Context_List_Invariant(Machine(Maze))==(btrue);
  List_Invariant(Machine(Maze))==(visited_route: seq(NATURAL1*NATURAL1) & visited_x_coordinate: NATURAL1 & visited_y_coordinate: NATURAL1)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Maze))==(btrue);
  Abstract_List_Assertions(Machine(Maze))==(btrue);
  Context_List_Assertions(Machine(Maze))==(btrue);
  List_Assertions(Machine(Maze))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Maze))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Maze))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Maze))==(visited_route,visited_x_coordinate,visited_y_coordinate:=<>,1,1);
  Context_List_Initialisation(Machine(Maze))==(skip);
  List_Initialisation(Machine(Maze))==(visited_route,visited_x_coordinate,visited_y_coordinate:=<>,1,1)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Maze))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Maze))==(btrue);
  List_Constraints(Machine(Maze))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Maze))==(getPosition,visitedSquare,foundExit,getRoute,update);
  List_Operations(Machine(Maze))==(getPosition,visitedSquare,foundExit,getRoute,update)
END
&
THEORY ListInputX IS
  List_Input(Machine(Maze),getPosition)==(?);
  List_Input(Machine(Maze),visitedSquare)==(xPoint,yPoint);
  List_Input(Machine(Maze),foundExit)==(?);
  List_Input(Machine(Maze),getRoute)==(?);
  List_Input(Machine(Maze),update)==(x_point,y_point,route)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Maze),getPosition)==(currentPosition);
  List_Output(Machine(Maze),visitedSquare)==(hasVisitedSquare);
  List_Output(Machine(Maze),foundExit)==(exitFound);
  List_Output(Machine(Maze),getRoute)==(route);
  List_Output(Machine(Maze),update)==(?)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Maze),getPosition)==(currentPosition <-- getPosition);
  List_Header(Machine(Maze),visitedSquare)==(hasVisitedSquare <-- visitedSquare(xPoint,yPoint));
  List_Header(Machine(Maze),foundExit)==(exitFound <-- foundExit);
  List_Header(Machine(Maze),getRoute)==(route <-- getRoute);
  List_Header(Machine(Maze),update)==(update(x_point,y_point,route))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Maze),getPosition)==(btrue);
  List_Precondition(Machine(Maze),visitedSquare)==(xPoint: X_Coordinate & yPoint: Y_Coordinate);
  List_Precondition(Machine(Maze),foundExit)==(btrue);
  List_Precondition(Machine(Maze),getRoute)==(btrue);
  List_Precondition(Machine(Maze),update)==(x_point: X_Coordinate & y_point: Y_Coordinate & route: seq(NATURAL1*NATURAL1))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Maze),update)==(x_point: X_Coordinate & y_point: Y_Coordinate & route: seq(NATURAL1*NATURAL1) | visited_route,visited_x_coordinate,visited_y_coordinate:=route,x_point,y_point);
  Expanded_List_Substitution(Machine(Maze),getRoute)==(btrue | route:=visited_route);
  Expanded_List_Substitution(Machine(Maze),foundExit)==(btrue | visited_x_coordinate|->visited_y_coordinate: Exit_Square ==> exitFound:=Yes [] not(visited_x_coordinate|->visited_y_coordinate: Exit_Square) ==> exitFound:=No);
  Expanded_List_Substitution(Machine(Maze),visitedSquare)==(xPoint: X_Coordinate & yPoint: Y_Coordinate | xPoint|->yPoint: ran(visited_route) ==> hasVisitedSquare:=Yes [] not(xPoint|->yPoint: ran(visited_route)) ==> hasVisitedSquare:=No);
  Expanded_List_Substitution(Machine(Maze),getPosition)==(btrue | currentPosition:=visited_x_coordinate|->visited_y_coordinate);
  List_Substitution(Machine(Maze),getPosition)==(currentPosition:=visited_x_coordinate|->visited_y_coordinate);
  List_Substitution(Machine(Maze),visitedSquare)==(IF xPoint|->yPoint: ran(visited_route) THEN hasVisitedSquare:=Yes ELSE hasVisitedSquare:=No END);
  List_Substitution(Machine(Maze),foundExit)==(IF visited_x_coordinate|->visited_y_coordinate: Exit_Square THEN exitFound:=Yes ELSE exitFound:=No END);
  List_Substitution(Machine(Maze),getRoute)==(route:=visited_route);
  List_Substitution(Machine(Maze),update)==(visited_route:=route || visited_x_coordinate:=x_point || visited_y_coordinate:=y_point)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Maze))==(X_Coordinate,Y_Coordinate,Entrance_Square,Exit_Square,Walls);
  Inherited_List_Constants(Machine(Maze))==(?);
  List_Constants(Machine(Maze))==(X_Coordinate,Y_Coordinate,Entrance_Square,Exit_Square,Walls)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Maze),OUTPUT_MESSAGE)==({Yes,No});
  Context_List_Enumerated(Machine(Maze))==(?);
  Context_List_Defered(Machine(Maze))==(?);
  Context_List_Sets(Machine(Maze))==(?);
  List_Valuable_Sets(Machine(Maze))==(?);
  Inherited_List_Enumerated(Machine(Maze))==(?);
  Inherited_List_Defered(Machine(Maze))==(?);
  Inherited_List_Sets(Machine(Maze))==(?);
  List_Enumerated(Machine(Maze))==(OUTPUT_MESSAGE);
  List_Defered(Machine(Maze))==(?);
  List_Sets(Machine(Maze))==(OUTPUT_MESSAGE)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Maze))==(?);
  Expanded_List_HiddenConstants(Machine(Maze))==(?);
  List_HiddenConstants(Machine(Maze))==(?);
  External_List_HiddenConstants(Machine(Maze))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Maze))==(btrue);
  Context_List_Properties(Machine(Maze))==(btrue);
  Inherited_List_Properties(Machine(Maze))==(btrue);
  List_Properties(Machine(Maze))==(X_Coordinate <: NATURAL1 & X_Coordinate = 1..7 & Y_Coordinate <: NATURAL1 & Y_Coordinate = 1..5 & Entrance_Square: NATURAL1 <-> NATURAL1 & Entrance_Square = {1|->1} & Exit_Square: NATURAL1 <-> NATURAL1 & Exit_Square = {1|->5} & Walls: NATURAL1 <-> NATURAL1 & Walls = {1|->3,2|->1,2|->3,2|->5,3|->3,4|->2,4|->3,4|->4,6|->1,6|->2,6|->4,7|->4} & OUTPUT_MESSAGE: FIN(INTEGER) & not(OUTPUT_MESSAGE = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Maze),getPosition)==(?);
  List_ANY_Var(Machine(Maze),visitedSquare)==(?);
  List_ANY_Var(Machine(Maze),foundExit)==(?);
  List_ANY_Var(Machine(Maze),getRoute)==(?);
  List_ANY_Var(Machine(Maze),update)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Maze)) == (X_Coordinate,Y_Coordinate,Entrance_Square,Exit_Square,Walls,OUTPUT_MESSAGE,Yes,No | ? | visited_y_coordinate,visited_x_coordinate,visited_route | ? | getPosition,visitedSquare,foundExit,getRoute,update | ? | ? | ? | Maze);
  List_Of_HiddenCst_Ids(Machine(Maze)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Maze)) == (X_Coordinate,Y_Coordinate,Entrance_Square,Exit_Square,Walls);
  List_Of_VisibleVar_Ids(Machine(Maze)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Maze)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Maze)) == (Type(OUTPUT_MESSAGE) == Cst(SetOf(etype(OUTPUT_MESSAGE,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Maze)) == (Type(Yes) == Cst(etype(OUTPUT_MESSAGE,0,1));Type(No) == Cst(etype(OUTPUT_MESSAGE,0,1));Type(X_Coordinate) == Cst(SetOf(btype(INTEGER,"[X_Coordinate","]X_Coordinate")));Type(Y_Coordinate) == Cst(SetOf(btype(INTEGER,"[Y_Coordinate","]Y_Coordinate")));Type(Entrance_Square) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(Exit_Square) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(Walls) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?))))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Maze)) == (Type(visited_y_coordinate) == Mvl(btype(INTEGER,?,?));Type(visited_x_coordinate) == Mvl(btype(INTEGER,?,?));Type(visited_route) == Mvl(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?)))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Maze)) == (Type(update) == Cst(No_type,btype(INTEGER,?,?)*btype(INTEGER,?,?)*SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(getRoute) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(foundExit) == Cst(etype(OUTPUT_MESSAGE,?,?),No_type);Type(visitedSquare) == Cst(etype(OUTPUT_MESSAGE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(getPosition) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type));
  Observers(Machine(Maze)) == (Type(getRoute) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(foundExit) == Cst(etype(OUTPUT_MESSAGE,?,?),No_type);Type(visitedSquare) == Cst(etype(OUTPUT_MESSAGE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(getPosition) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type))
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
