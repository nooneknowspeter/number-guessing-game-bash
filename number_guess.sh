#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\n-- Number Guessing Game --\n"

sleep 1

# ask user to input username
echo -e "\nEnter your username:"

read USERNAME

# query username from db
QUERY_USERNAME=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")

if [[ -z $QUERY_USERNAME ]]; then
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."

  # input user into db
  INPUT_USER=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
else
  # query number of games played in db
  QUERY_GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")

  # query best game; minimum number of guesses
  QUERY_BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")

  echo -e "\nWelcome back, $USERNAME! You have played $QUERY_GAMES_PLAYED games, and your best game took $QUERY_BEST_GAME guesses."
fi

# generates a random number between 1 and 1000
SECRET_NUMBER=$((RANDOM % 1000 + 1))

NUMBER_OF_GUESSES=0

echo -e "\nGuess the secret number between 1 and 1000:"

read GUESS

until [[ $GUESS == $SECRET_NUMBER ]]; do

  if [[ ! $GUESS =~ ^[0-9]+$ ]]; then

    echo -e "\nThat is not an integer, guess again:"

    read GUESS

    ((NUMBER_OF_GUESSES++))

  else
    if [[ $GUESS < $SECRET_NUMBER ]]; then

      echo -e "\nIt's lower than that, guess again:"

      read GUESS

      ((NUMBER_OF_GUESSES++))

    elif [[ $GUESS > $SECRET_NUMBER ]]; then

      echo -e "\nIt's higher than that, guess again:"

      read GUESS

      ((NUMBER_OF_GUESSES++))
    fi
  fi

done

((NUMBER_OF_GUESSES++))

echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"

# query user id from database
QUERY_USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

# input game data into database
INPUT_GAME_INTO_DB=$($PSQL "INSERT INTO games (user_id, secret_number, number_of_guesses) VALUES ($QUERY_USER_ID, $SECRET_NUMBER, $NUMBER_OF_GUESSES)")
