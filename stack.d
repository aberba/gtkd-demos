import gtk.Main;
import gtk.MainWindow;

import gtk.Box;
import gtk.Label;
import gtk.Stack;
import gtk.StackSwitcher;

void main(string[] args) 
{
	Main.init(args);
	auto window = new MainWindow("Stack Demo");
	window.setDefaultSize(400, 200);

	auto box = new Box(Orientation.VERTICAL, 0);

    auto stack = new Stack();
    stack.setTransitionType(StackTransitionType.SLIDE_LEFT_RIGHT);
    stack.setTransitionDuration(1000);

    stack.addTitled(new Label("Stack 1"), "st1", "1");
    stack.addTitled(new Label("Stack 2"), "st2", "2");
    stack.addTitled(new Label("Stack 3"), "st3", "3");
    
    auto stackSwitcher = new StackSwitcher();
    stackSwitcher.setStack(stack);

	box.packStart(stackSwitcher, false, false, 10);
	box.packStart(stack, false, false, 10);

	window.add(box);
	window.showAll();
	Main.run();
}