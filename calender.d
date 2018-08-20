import gtk.Main;
import gtk.MainWindow;

import gtk.Box;
import gtk.Calendar;

void main(string[] args) 
{
	Main.init(args);
	auto window = new MainWindow("Window Title");
	window.setDefaultSize(400, 200);


    auto box = new Box(Orientation.HORIZONTAL, 0);
    box.add(new Calendar());
    window.add(box);

	window.showAll();
	Main.run();
}