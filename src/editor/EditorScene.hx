package;

class EditorScene extends h2d.Scene {

  public static var ME(default, null) : EditorScene;

  public var fui : h2d.Flow;

  public function new() {
    ME = this;
    super();


    setupUI();
  }

  function setupUI() {
    fui = new h2d.Flow(this);
    fui.layout = Vertical;
    fui.debug = true;
    fui.fillWidth = true;
    fui.fillHeight = true;
  
    setupLayout();

  }

  function setupLayout() {
    new tool.Header(fui);
    new tool.Sidebar(fui, "test");
  }
}
