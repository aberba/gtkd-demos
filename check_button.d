import gtk.Main;
import gtk.MainWindow;

import gtk.Box;
import gtk.CheckButton;

void main(string[] args) 
{
	Main.init(args);
	auto window = new MainWindow("Switch");
	window.setDefaultSize(400, 200);

	auto box = new Box(Orientation.VERTICAL, 0);

    auto checkButton = new CheckButton("Check Me :)");

	box.packStart(checkButton, false, false, 10);

	window.add(box);
	window.showAll();
	Main.run();
}