#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\n-- Number Guessing Game --\n"

# ask user to input username
echo "Enter your username:"

read USERNAME

# query username from db
QUERY_USERNAME=$($PSQL "SELECT username FROM users WHERE username = $USERNAME")

if [[ -z $QUERY_USERNAME ]]; then
  echo "Welcome, $USERNAME! It looks like this is your first time here."

  # input user into db
  INPUT_USER=$($PSQL "INSERT INTO users (username) VALUES ($USERNAME)")
else
  echo "Welcome back, $USERNAME! You have played <games_played> games, and your best game took <best_game> guesses."
fi

# generates a random number between 1 and 10
SECRET_NUMBER=$((RANDOM % 10 + 1))
