import gtk.Main;
import gtk.MainWindow;
import gtk.Box;
import gtk.Button;


void main(string[] args) {
	Main.init(args);

	auto window = new MainWindow("Box Layout");
	window.setDefaultSize(400, 200);

    // Box(orientation, spacing)
    auto box = new Box(Orientation.VERTICAL, 30);
    box.add(new Button("Button 1"));
    box.add(new Button("Button 2"));

	window.add(box);

	window.showAll();
	Main.run();
}
