# Module 3: An Introduction To DevOps

## Learning Objectives

This project aims to show use cases where a DevOps
approach is of use toward a software project through automation,
decreasing the amount of manual work and increasing the
development speed. It focuses on the usefulness of automation,
and helps to hasten the development lifecycle.

## Lifecycle

### Requirements

- An HTML5-compliant web browser (Firefox, Chrome, Opera, Safari, Edge, etc.)
- A free account on [GitHub](https://github.com/), referenced as `GitHub Handle`
- A shell terminal with bash, zsh or ksh,
  including the standard Unix toolset (ls, cd, etc.)
- [GNU](https://www.gnu.org/software/make/) Make in version 3.81+
- Git (command line) in version 2+
- [Go Hugo](https://gohugo.io/) v0.80+

## Product Architecture

### Developing the Product

The program is generated uising the inbuilt functions provided by HUGO 0.80+.
The Makefile is built to GNU Make v4.3
Hugo 0.80+

### Using the make file

The Makefile contains the following commands:
To run the make file use the `make <command>`

`build`:
Builds a new version of the website to the `/dist/` folder

`clean`:
Removes the contents of the `/dist/` folder.

`help`:
Prints out information of the commands to the terminal.

`post`:
Creates a new post in the contents/post folder with POST_TITLE and POST_NAME
set from the ENV variables.

`package`:
Creates a zip archive of the latest build, and stores in awesome-website.zip

`unit-tests`:
Runs each make recipe

`integration-tests`:
Begins a server and checks localhost URL

`validate`:
Checks the current working directory

`lint`:
Applies markdown lint to README and DEPLOY files

## Workflow

Currently making use of Github actions to:

- Clone the repository
- Position self in the correct directory and execute
  the command `make help` to validate that the
  Makefile is present, and implement the help target check.
- Build the package
- Archive the package
- Test make recipes
- Release the package alongside deployment documentation

It is triggered:

- Each time new code is pushed to the repository
- Once a day at 8:08 a.m.
- Release occurs when tag 1.0.0 is encountered
- Deployment occurs upon each pull request

## Author

Dylan Anderson - [https://github.com/RubberizedDuck]
