
import gtk.Main;
import gtk.MainWindow;

void main(string[] args) {
	Main.init(args);

	auto window = new MainWindow("Hello, World!");
	window.setDefaultSize(400, 200);
	window.showAll();

	Main.run();
}
