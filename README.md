# TwO-O-Player Math Game

## Game Description: 
- 2-Player math game where players take turns to answer simple math addition problems. 
- A new math question is generated for each turn by picking two numbers between 1 and 20. 
- The player whose turn it is is prompted the question and must answer correctly or lose a life.
- Both players start with 3 lives. They lose a life if they mis-answer a question.
- At the end of every turn, the game outputs the new scores for both players, so players know where they stand.
- The game doesn’t end until one of the players loses all their lives.
- The game will announce who won and what the other player’s score is.

## Roles for Each Class

#### Player 1
- Q: What does 5 + 8 eqaul to?
- A: => 12
- A: This is the wrong answer! 
- P1: 2/3 vs P2 3/3

---New Turn---
#### Player 2
- Q: What does 15 + 5 equal to?
- A: => 20
- A: You got it!
- P1: 2/3 vs P2 3/3

---New Turn---
#### Player 1
- Q: What does 2 + 5 eqaul to?
- A: => 6
- A: This is the wrong answer! 
- P1: 1/3 vs P2 3/3

---New Turn---
#### Player 2
- Q: What does 20 + 7 equal to?
- A: => 27
- A: You got it!
- P1: 1/3 vs P2 3/3

...............................


## Start the Game
- Player1_lives => P1:3
- Player2_lives => P2:3

- Every time the player answer wrong => lives - 1 =>  P1: 2/3 vs P2 3/3
- When the Player1_lives or Player2_lives get 0/0 => Player1 / Player2 wins with a score of 0/3

---- GAME OVER -----

## GAME STRUCTURE

### CLASSES
- Game => To manage the game flow, control who's turn to answer a question is
- Player => To represent each player and hold their life scores
- Questions => To generate Math questions and validate answers

### Game Class
- ATTRIBUTES: Player1, Player2, Current Player
- METHODS: 
1. start the game, switch players turns 
2. control/display the current score 
3. check if the game is over

### Player Class
- ATTRIBUTES: Player1, Player2
- METHODS: Loose life in case of incorect answer to the question

### Questions Class
- Generates a question using numbers from 1 - 20
- Validates if the question was answered correct/incorrect