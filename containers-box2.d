import gtk.Main;
import gtk.MainWindow;
import gtk.Box;
import gtk.Button;


void main(string[] args) {
	Main.init(args);

	auto window = new MainWindow("Box Layout");
	window.setDefaultSize(400, 200);

    // Box(enum Orientation.*, int spacing)
    auto box = new Box(Orientation.VERTICAL, 30);

    //packStart(Widget w, bool expand, bool fill, int spacing)
    box.packStart(new Button("Button 1"), true, true, 0);
    box.packStart(new Button("Button 2"), false, true, 0);
    box.packStart(new Button("Button 3"), false, false, 10);

	window.add(box);

	window.showAll();
	Main.run();
}