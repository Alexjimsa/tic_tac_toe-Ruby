# Tic-Tac-Toe

## Introduction
Tic Tac Toe (also known as "Noughts and Crosses") is a classic game involving two players. Each player takes turns marking their respective symbols (X or O) on a 3x3 grid. The goal is to be the first to align three of their symbols either horizontally, vertically, or diagonally. This project aims to implement a command-line version of Tic-Tac-Toe using Ruby with an OOD, where two human players can play against each other.

## Assignment
The task is to build a Tic-Tac-Toe game in the command line. The key features of this project include:

- Two human players take turns to play.
- The game board is displayed after every turn.
- The game checks for a winner after each move and announces when the game is over (either by win or draw).

## Features
- **Command-line interface**: The game runs entirely in the terminal.
- **Turn-based gameplay**: Players alternate turns.
- **Real-time board display**: The game board updates and displays after every move.
- **Victory conditions**: The game checks for victory or a draw after every turn.

## How to Play
1. Player 1 will be assigned the "X" symbol and Player 2 will be assigned the "O" symbol.
2. The game board will be displayed with numbered positions (1-9) representing each available spot.
3. Players take turns by entering the number corresponding to the position they want to mark on the board.
4. The game will check for a winner after each move. The first player to get three symbols in a row (horizontally, vertically, or diagonally) wins.
5. If all nine positions are filled without a winner, the game will end in a draw.

## Game Rules
- Players can only mark empty spots on the board.
- The game ends when either player wins, or the board is completely filled (resulting in a draw).

## Empty Board / Full Board

```plaintext
  1 | 2 | 3    |   x | o | o
 -----------   |  -----------
  4 | 5 | 6    |   o | x | x
 -----------   |  -----------
  7 | 8 | 9    |   x | o | x
```