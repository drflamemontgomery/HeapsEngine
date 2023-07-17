package tool;

class Header extends h2d.Flow {
  
  public function new(?parent:h2d.Object) {
    if(emptyTile == null) {
      emptyTile = h2d.Tile.fromColor(0x000000, 1, 1, 0);
      bgTile = h2d.Tile.fromColor(0x222222, 1, 1);
    }
    
    super(parent);

    fillWidth = true;
    horizontalSpacing = 5;
    padding = 5;

    setupDropdowns();
  }

  function createText(?parent:h2d.Dropdown, str:String) {
    var tf = new h2d.Text(hxd.res.DefaultFont.get(), parent);
    tf.text = str;
    return tf;
  }

  static var emptyTile : h2d.Tile;
  static var bgTile : h2d.Tile;

  function createDropdown(header:String) {
    var dw = new h2d.Dropdown(this);
    dw.tileArrow = emptyTile;
    dw.tileArrowOpen = emptyTile;

    dw.minWidth = 60;
    dw.backgroundTile = bgTile;
    dw.dropdownList.padding = 5;
    dw.onClose = function() {
      dw.selectedItem = -1; 
      dw.padding = 5;
    };

    createText(dw, header);
    return dw;  
  }

  function setupDropdowns() {
    var fileOption = createDropdown("File");
    fileOption.addItem(createText("Test"));
  }

}
