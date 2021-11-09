package heapsx.ecs;

import hcqe.Entity;

@:forward
abstract Entity( hcqe.Entity )  from  hcqe.Entity to  hcqe.Entity {
    public inline function new(worlds:Int = 0xffffffff) {
        this = new hcqe.Entity(worlds);
    }
}

