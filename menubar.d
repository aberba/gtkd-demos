import gtk.Main;
import gtk.MainWindow;
import gtk.Box;
import gtk.MenuBar;
import gtk.MenuItem;


void main(string[] args) {
	Main.init(args);

	auto window = new MainWindow("Box Layout");
	window.setDefaultSize(400, 200);

    // Box(enum Orientation.*, int spacing)
    auto box = new Box(Orientation.VERTICAL, 30);
    auto menuBar = new MenuBar();
    auto fileMenuItem = new MenuItem("File");
    menuBar.append(fileMenuItem);

    //packStart(Widget w, bool expand, bool fill, int spacing)
    box.packStart(menuBar, false, false, 0);
    

	window.add(box);

	window.showAll();
	Main.run();
}