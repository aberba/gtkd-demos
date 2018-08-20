import gtk.Main;
import gtk.MainWindow;

import gtk.Box;
import gtk.Label;
import gtk.ListBox;
import gtk.ListBoxRow;

void main(string[] args) 
{
	Main.init(args);
	auto window = new MainWindow("Switch");
	window.setDefaultSize(400, 200);

	auto box = new Box(Orientation.VERTICAL, 0);

    auto listBox = new ListBox();
    listBox.setSelectionMode(SelectionMode.NONE);

	auto label1 = new Label("Row 1");
	auto listBoxRow1 = new ListBoxRow();
	auto box1 = new Box(Orientation.VERTICAL, 0);
	box1.packStart(label1, false, false, 10);
	listBoxRow1.add(box1);

	auto label2 = new Label("Row 2");
	auto listBoxRow2 = new ListBoxRow();
	auto box2 = new Box(Orientation.VERTICAL, 0);
	box1.packStart(label2, false, false, 10);
	listBoxRow1.add(box2);

	//add listbox rows
	listBox.add(listBoxRow1);
	listBox.add(listBoxRow2);

	box.packStart(listBox, false, false, 10);

	window.add(box);
	window.showAll();
	Main.run();
}