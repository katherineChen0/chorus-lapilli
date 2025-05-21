The goal of this assignment is to build a simple application using React.

A secondary goal of this assignment is for you to record what you did. This is so that someone else can build your app, and so that you can see later what you did, to fix your app or to build a similar app.

Build the simple tic-tac-toe game of the tutorial cited above. You need not follow the setup instructions listed in the tutorial; you've already set up your environment. All changes should be made in src/App.jsx. Use ./helper dev to view your changes in the browser.

As you go, keep a log in the file tic-tac-toe.txt of what you have done so that you can reproduce the results later. This should not merely be a transcript of what you typed: it should be more like a true lab notebook, in which you briefly note down what you did and what happened. Write down every significant action that you take, including installing and configuring components as well as any code that you write.

Now, use your experience to modify your tic-tac-toe solution that lets you play a variant of terni lapilli (“three grains”), a popular board game in ancient Rome. We’ll call this variant chorus lapilli (“dancing grains”).

Chorus lapilli is like tic-tac-toe in that players take turn placing pieces on a 3×3 board and the goal is to get three pieces in a row. However, it differs from tic-tac-toe in two ways:

After your first three moves, instead of adding further pieces you must instead move one of your existing pieces to an adjacent empty square. Therefore, after your third move you always occupy three squares. The move can be up, down, left, right, or diagonal.
If it is your turn to move and you have three pieces on the board and one of your pieces is in the center square, your move must either win or vacate the center square.
Before submitting to Gradescope, it's recommended that you write tests to verify your solution. Write your tests in the provided tests.py file. Use ./helper test to run these tests. (If you're on WSL, use ./helper test headless instead. If you needed to run the Docker installation instructions, run ./helper test-docker instead.) It includes two example tests: one checks for an empty board state on refresh, and the other checks clicking the top left tile places an X on an empty board. While we won't be checking for this, add at least three more tests. One of your tests should check that your app prevents additional moves once a player wins.

Keep a log of how you built your chorus lapilli app in a file chorus-lapilli.txt. Like your other log file, it should be a complete set of steps to build your toy application, that you could give to someone else to write + reproduce your game.
