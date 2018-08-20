import gtk.Main;
import gtk.MainWindow;

import gtk.Box;
import gtk.Label;
import gtk.Entry;

void main(string[] args) 
{
	Main.init(args);
	auto window = new MainWindow("Switch");
	window.setDefaultSize(400, 200);

	auto box = new Box(Orientation.VERTICAL, 0);
	auto nameLabel = new Label("Enter your name: ");
	auto nameEntry  = new Entry();
	nameEntry.setPlaceholderText("eg. John Doe");
	//nameEntry.setVisibility(false);
	box.packStart(nameLabel, false, false, 10);
	box.packStart(nameEntry, false, false, 10);

	window.add(box);
	window.showAll();
	Main.run();
}