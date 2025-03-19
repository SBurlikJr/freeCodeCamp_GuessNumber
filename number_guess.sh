#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=postgres -t -c"

echo -e "\nEnter your username:"
read USERNAME

if [[ ${#USERNAME} -gt 22 ]]
then
  echo "This username is too long (>22 characters)."
else
  USERNAME_RESULT=$($PSQL "select * from users where username='$USERNAME'")
  # no user; create
  if [[ -z $USERNAME_RESULT ]]
  then
    NEW_USER=$($PSQL "insert into users(username) values('$USERNAME')")
    echo -e "\nWelcome, $(echo $USERNAME | sed -E 's/^ *| *$//g')! It looks like this is your first time here."
  else
    # pull user's game data
    USER_GAME_DATA=$($PSQL "select user_id, username, count(*) as number_of_games, (select min(number_of_guesses) from games) as minimum_num_guess from games inner join users using(user_id) where username='$USERNAME' group by user_id, username")
    echo "$USER_GAME_DATA" | while read USER_ID BAR USERNAME BAR NUM_OF_GAMES BAR BEST_GUESS_NUM
    do
      echo -e "\nWelcome, $(echo $USERNAME | sed -E 's/^ *| *$//g')! You have played $(echo $NUM_OF_GAMES | sed -E 's/^ *| *$//g') games, and your best game took $(echo $BEST_GUESS_NUM | sed -E 's/^ *| *$//g') guesses."
    done
  fi

  RANDOM_GENERATED_NUMBER=$(($RANDOM%1000 + 1))
  NUMBER_OF_GUESSES=0

  echo -e "\nGuess the secret number between 1 and 1000:"

  while true
  do
    ((NUMBER_OF_GUESSES+=1))
    read USER_INPUT
    if [[ ! $USER_INPUT =~ ^[0-9]+$ ]]
    then
      echo -e "That is not an integer, guess again:\n"
    elif [[ $USER_INPUT > $RANDOM_GENERATED_NUMBER ]]
    then
      echo -e "It's lower than that, guess again:\n"
    elif [[ $USER_INPUT < $RANDOM_GENERATED_NUMBER ]]
    then
      echo -e "It's higher than that, guess again:\n"
    else 
      echo -e "\nYou guessed it in $(echo $NUMBER_OF_GUESSES | sed -E 's/^ *| *$//g') tries. The secret number was $(echo $RANDOM_GENERATED_NUMBER | sed -E 's/^ *| *$//g'). Nice job!"
      break
    fi
  done
  USER_ID=$($PSQL "select user_id from users where username='$USERNAME'")
  GAME_RECORDS=$($PSQL "insert into games(user_id, rand_generated_num, number_of_guesses) values($USER_ID,$RANDOM_GENERATED_NUMBER,$NUMBER_OF_GUESSES)")
fi
