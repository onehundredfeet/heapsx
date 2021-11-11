package heapsx.ecs;

import heapsx.ecs.System;

@:forward
abstract Workflow( hcqe.Workflow ) {
    public static inline function addSystem( s : System ) {
        hcqe.Workflow.addSystem(s);
    }
}

