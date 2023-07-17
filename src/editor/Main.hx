class Main extends hxd.App {

  static function main() {
    new Main();
  }

  public function new() {
    super();
  }

  override function init() {
    engine.backgroundColor = 0x101010;

    setScene(new EditorScene());
  }

}
