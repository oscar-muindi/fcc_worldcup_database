#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Worldcup database script

echo -e $($PSQL "TRUNCATE TABLE teams, games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $WINNER != "winner" ]]
  then
    #get winner_id 
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    
    #if not found
    if [[ -z $WINNER_ID ]]
    then
     #insert winner
     INSERT_WINNER_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    

      if [[ INSERT_WINNER_NAME == "INSERT 0 1" ]]
              then
               echo Inserted into teams, $WINNER

      fi
    fi
  fi  
 
  if [[ $OPPONENT != "opponent" ]]
   then
    #get opponent_id 
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
 
    #if not found
    if [[ -z $OPPONENT_ID ]]
    then
     #insert opponent
     INSERT_OPPONENT_NAME=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    

      if [[ INSERT_OPPONENT_NAME == "INSERT 0 1" ]]
              then
               echo Inserted into teams, $OPPONENT
      fi
    fi
  fi  
  
 
      
  if [[ $YEAR != "year" ]]
  then
    #insert into games: year, round, winner_id, opponent_id, winner_goals, opponent_goals
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    INSERT_INTO_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
  
    if [[ $INSERT_INTO_GAMES == "INSERT 0 1" ]]
            then
              echo Inserted into Games: $YEAR, $ROUND, $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS
    fi
  fi
    
done
