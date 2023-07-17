package tool;

class Sidebar extends h2d.Flow {
  
  public function new(?parent:h2d.Object, ?name:String) {
    super(parent);

    layout = Vertical;
    verticalSpacing = 5;
    padding = 10;

    fillHeight = true;

    if(name != null) {
      var t = new h2d.Text(hxd.res.DefaultFont.get(), this);
      t.text = name;
    }

  }
}
