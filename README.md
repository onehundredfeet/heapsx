# heapsx
A Haxe game engine built on heaps.io.  

# status

THIS REPO IS A WORK IN PROGRESS, DO NOT USE UNTIL THIS MESSGE IS REMOVED

# acknowledgement
Nicolas Cannasse et. all have built an amazing tech stack with Haxe, Heaps etc.  

Haxe and Heaps are amazing game technologies.  They are great out of the box and also easily extensible. Shiro games uses a tech stack that is slightly larger than vanilla Heaps.  Inspired by that, I wanted to assemble a suite of haxe libraries that provided a stronger start to build a networked multiplayer game.  This tech stack will work for any game, but it is intended to reach a few more places that vanilla heaps doesn't.

Some additional features include:

- An entity component system (hcqe - based on Echo ECS)
- AI Pathfinding and Navmesh generation (Recast)
- Reliable UDP communication (Yojimbo)
- hxbit support across UDP
- Cross platform high resolution timer
- Bit-level compression for network communication (hxbit & custom bitcompression)
- 3D Physics (Bullet)
- 2D Physics (Chipmunk)
- An integration with Hide (The Shiro games editor)
- CastleDB out of the box
- A unified foreign function interface (FFI)
- And more to come


Currently, the engine targets hashlink and HL/C only. That could be extended over time, but the low level integrations require hashlink's integration API.

# Structure
This repo is intended to be a packaging of all the loose libraries that make up Heaps & Heapsx.  It uses a lot of the latest versions of the libraries, which will mean some amount of instablity.  When we finda stable version of all the libraries, we will create a release that spans across all sublibraries.

The repo is directly linked using git submodules to the original libraries.  You can follow those for documentation on each included library.

# Examples
We will include several examples to show how you get started with the engine.

# Requirements
- Hashink version 1.12+ (This is important. We use features in Hashlink not present before 1.12)
- Git
- Premake5
- Cmake

# Getting Started
- First clone this repo
- Make sure you have the requirements installed
- Run the `init.sh`( or .bat for windows) to get and initialize all submodules
- Run the `build.sh`( or .bat for windows) to get and initialize all submodules
- run `setup.sh <projectdir>` This creates a `.haxelib` directory inside the target directory. It will then create links back to these directories for each of the subprojects.  You can then use `haxelib` to install any additional libraries inside the project directory.  Haxe will not search your regular haxelib paths.  We do this to reduce version conflicts inside the project. This will `NOT` overwrite any other parts of the project directory.  You can safely re-run this script.
- create a Heaps application inside your project directory
- Add `heapsx` as a library to the application when compiling with haxe (`--library heapsx`).  You do NOT need to add each of the submodules as libraries.  In fact, you should likely remove them as they will be implicitely added through the haxelib dependency system.



