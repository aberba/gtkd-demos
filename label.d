import gtk.Main;
import gtk.MainWindow;
import gtk.Label;

void main(string[] args) {
	Main.init(args);

	auto window = new MainWindow("Hello, World!");
	window.setDefaultSize(400, 200);

	auto label = new Label("This is a Label");
	label.modifyFont("Ubuntu", 14);
	window.add(label);

	window.showAll();

	Main.run();
}
