# Game Of Life for FPGAs

Elective university project implementing Conway's Game Of Life in Clash (a functional hardware description language building on Haskell) making it able to be executed on FPGAs.

Author:
Jack Kryger Sørensen <jkrs@itu.dk>

## Code

Source code for the game located in the ```/src``` directory.
Grids and their parser is located in the ```/grids``` directory.
Remaining files are used for running Clash via Stack.

## Prerequisites

### Haskell

Used for parsing grids into Clash.
Install from [Haskell](https://www.haskell.org/).

### Stack

Used for compiling and executing Clash.
Install from [How to install](https://docs.haskellstack.org/en/stable/).

## Execution

All commands run from the root directory. Stack will use the project files located in ```/src```.

### Locally

To run the project in Clash Interactive:

```bash
stack run clashi
```

In the interactive mode the main module will be executed by:

```haskell
import Project
topEntity
```

Or run the game manually by specifying the number of rounds to play and manually construct a grid:

```haskell
import Project
import Grid
import Types
import Clash.Sized.Vector

iteratePlay nRounds grid
```

The setup manual grid construction can be seen in ```src/Grid.hs```.

### Automated grid injection

Run the Haskell program ```Parser``` by:

```bash
runghc ./grids/Parser.hs <grid> <nRounds>
```

Replace ```<grid>``` with the name of a grid file located in ```/grids```.
Replace ```<nRounds>``` with an integer for how many rounds should be played.

This will inject a grid into the project by replacing the ```src/Grid.hs``` module.

### On FPGAs

To compile the project to VHDL, run:

```bash
stack run clash -- Project --vhdl
```
