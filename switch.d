import gtk.Main;
import gtk.MainWindow;

import gtk.Box;
import gtk.Label;
import gtk.Switch;

void main(string[] args) 
{
	Main.init(args);
	auto window = new MainWindow("Switch");
	window.setDefaultSize(400, 200);

	auto box = new Box(Orientation.HORIZONTAL, 0);
	auto onLabel = new Label("On Lights");
	auto onSwitch  = new Switch();
	box.packStart(onLabel, false, false, 10);
	box.packStart(onSwitch, false, false, 10);

	window.add(box);
	window.showAll();
	Main.run();
}