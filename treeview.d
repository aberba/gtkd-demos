import gtk.Main;
import gtk.MainWindow;

import gtk.Box;
//import gtk.Widget;
//import gtk.MenuBar;
//import gtk.MenuItem;
//import gtk.Menu;

void main(string[] args) {
	Main.init(args);

	auto window = new MainWindow("Box Layout");
	window.setDefaultSize(400, 200);

	

    // Box(enum Orientation.*, int spacing)
    auto box = new Box(Orientation.VERTICAL, 30);

    //packStart(Widget w, bool expand, bool fill, int spacing)
    box.packStart(menuBar, false, false, 0);

	window.add(box);
	window.showAll();
	Main.run();
}