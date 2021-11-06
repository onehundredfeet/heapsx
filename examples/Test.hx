import ShaderMath.vec2;
import Vec2; // hvector lib
import heaps.yojimbo.Common.NetSerializable;
import hcqe.Entity;
import haxe.EnumTools;

// ECS
class TestECSSystem extends hcqe.System {
    @added
    public function onTestText( tf : h2d.Text ) {       
        var x = vec2(0., 0.); // creates a vector from hvector
        tf.text = "Hello World !" + x;
    }
}




// Heaps App - No extra infrastructure required
class Test extends hxd.App {
   override function init() {
        //Adds the system to the ECS global list
        //Added events will start functioning
        hcqe.Workflow.addSystem(new TestECSSystem());

        // Create a new entity (automatically added)
        var e = new Entity();
        // Attach a component to the entity, will trigger the ecs addition
        e.add(new h2d.Text(hxd.res.DefaultFont.get(), s2d));
    }
 
    public static function main() {

        new Test();
    }
}