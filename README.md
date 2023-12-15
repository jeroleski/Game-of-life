# Game Of Life for FPGAs

Elective university project implementing Conway's Game Of Life in Clash (a functional hardware description language building on Haskell) making it able to be executed on FPGAs.

Author:
Jack Kryger Sørensen <jkrs@itu.dk>

## Code

Source code is located in the ```/src``` directory.

## Prerequisites

### Stack

Install Stack using your package manager or refer to the [How to install](https://docs.haskellstack.org/en/stable/README/#how-to-install) section of the [Stack manual](https://docs.haskellstack.org/en/stable/README/).

## Execution

### Locally

To run the project in Clash Interactive:

```bash
stack run clashi
```

In the interactive mode

```haskell
import Project
topEntity
```

Will run the main module.

### On FPGAs

To compile the project to VHDL, run:

```bash
stack run clash -- Project --vhdl
```
