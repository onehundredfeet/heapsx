import hvector.ShaderMath;
import hvector.Vec2;
import heapsx.app.App;
import ecs.System;
import ecs.Workflow;
import ecs.Entity;

// ECS
class TestECSSystem extends ecs.System {
    public function new() {

    }
    @added
    public function onTestText( tf : h2d.Text ) {       
        var x = vec2(0., 0.); // creates a vector from hvector implicitely using 'ShaderMath'
        var y = new heapsx.math.Math.Vec2(0., 0.);
        var z = x + y; 
        tf.text = 'Hello World !${x},${y}';
        
    }
}

// Heaps App - No extra infrastructure required
class Test extends heapsx.app.AppBase {
    final MAX_MESSGES_TYPES = 10;
 
   override function init() { 
        
        heapsx.net.Log.setLogLevel(YOJIMBO_LOG_LEVEL_INFO);
        heapsx.net.Net.initialize(MAX_MESSGES_TYPES);
        //Adds the system to the ECS global list
        //Added events will start functioning
        ecs.Workflow.addSystem(new TestECSSystem());
        
        // Create a new entity (automatically added)
        var e = new Entity();
        // Attach a component to the entity, will trigger the ecs addition
        e.add(new h2d.Text(hxd.res.DefaultFont.get(), s2d));
    }
 
    public static function main() {
        new Test();
    }
}
