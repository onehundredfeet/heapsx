package heapsx.ecs;

import heapsx.ecs.System;

class Workflow extends hcqe.Workflow {
    public static inline function addSystem( s : System ) {
        hcqe.Workflow.addSystem(s);
    }
}

