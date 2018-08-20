import gtk.Main;
import gtk.MainWindow;

import gtk.Box;
import gtk.ComboBoxText;

void main(string[] args) 
{
	Main.init(args);
	auto window = new MainWindow("Switch");
	window.setDefaultSize(400, 200);

	auto box = new Box(Orientation.VERTICAL, 0);

    auto comboBoxText = new ComboBoxText();
    comboBoxText.insert(0, "0", "Ghana");
    comboBoxText.insert(1, "1", "USA");
    comboBoxText.insert(2, "2", "France");
    comboBoxText.insert(3, "3", "Germany");
    
	box.packStart(comboBoxText, false, false, 10);

	window.add(box);
	window.showAll();
	Main.run();
}