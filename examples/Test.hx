


class Test extends hxd.App {

    override function init() {
        var tf = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
        tf.text = "Hello World !";
    }
 

    public static function main() {

        new Test();
    }
}