# Flip Game Swift

A Concentration-style card matching game built in Swift for iOS. Cards are laid face down on the board, and the player flips two cards at a time trying to find matching pairs. The goal is to match every pair using as few flips as possible.

<img width="283" height="585" alt="Screenshot 2026-08-12 at 12 47 00" src="https://github.com/user-attachments/assets/f43607af-cb06-491e-8cb9-9a57d782ae41" />

## About

Concentration (also known as Memory or Match Up) is a classic card game. In this implementation, each card starts face down. Tapping a card flips it face up. When two face-up cards are showing:

- If they match, both cards stay face up and are removed from play.
- If they do not match, both cards flip back face down after a short delay.

The game continues until every pair on the board has been matched.

## Features

- Grid of flippable cards built with UIKit
- Randomized card and symbol placement for every new game
- Match detection between two selected cards
- Flip animations for turning cards face up and face down
- New Game option to reset the board and start over

## Requirements

- macOS with Xcode installed
- Xcode 9 or later
- Swift 4 or later
- iOS 11.0 or later (device or simulator)

## Getting Started

1. Clone the repository:
   ```
   git clone https://github.com/Empty-Developer/Flip-Game-Swift.git
   ```
2. Open the project in Xcode:
   ```
   cd Flip-Game-Swift/Concentration
   open Concentration.xcodeproj
   ```
3. Select a simulator or a connected device as the run target.
4. Build and run the project (Cmd + R).

## Project Structure

```
Flip-Game-Swift/
  Concentration/     Xcode project and source files for the game
  .gitignore
  README.md
```

## How to Play

1. Launch the app.
2. Tap any face-down card to flip it face up.
3. Tap a second card to flip it face up as well.
4. If the two cards match, they remain face up and are removed from play.
5. If the two cards do not match, they flip back face down.
6. Continue selecting pairs until all cards on the board have been matched.
7. Use the New Game button at any time to reshuffle the board and start over.

## Contributing

Contributions are welcome. If you would like to make a change:

1. Fork the repository.
2. Create a new branch for your change.
3. Commit your changes with a clear message.
4. Open a pull request describing what was changed and why.
