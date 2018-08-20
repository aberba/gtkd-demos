import gtk.Main;
import gtk.MainWindow;

import gtk.Box;
import gtk.Label;
import gtk.TextView;

void main(string[] args) 
{
	Main.init(args);
	auto window = new MainWindow("Text View Demo");
	window.setDefaultSize(400, 200);

 	auto box = new Box(Orientation.VERTICAL, 0);
 	auto label = new Label("Enter text here");
    auto textView = new TextView();
    textView.insertText("Sample inserted text");

    box.packStart(label, false, false, 0);
    box.packStart(textView, true, true, 10);

    window.add(box);
	window.showAll();
	Main.run();
}