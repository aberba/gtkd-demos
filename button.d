import gtk.Main;
import gtk.MainWindow;

// NB: module is (GIMP Drawing Kit) gdk, not gtk
import gdk.Event; 

//Widget is the parent object for all widgets
import gtk.Widget;
import gtk.Button;


void main(string[] args) {
	Main.init(args);

	auto window = new MainWindow("Hello, World!");
	window.setDefaultSize(400, 200);

	auto button = new Button("Click to Quit");
	button.modifyFont("Ubuntu", 14);

	bool quit(Event e, Widget w) {
		Main.quit();
		return true;
	}


	//call the quit function above
	button.addOnButtonRelease(&quit);


	window.add(button);

	window.showAll();

	Main.run();
}
