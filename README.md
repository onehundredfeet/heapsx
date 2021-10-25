# heapsx
A Haxe engine built on heaps.io.  



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
- And more to come
- An integration with Hide (The Shiro games editor)
- CastleDB out of the box
- A unified foreign function interface (FFI)


Currently, the engine targets hashlink and HL/C only. That could be extended over time, but the low level integrations require hashlink's integration API.

