import gtk.Main;
import gtk.MainWindow;

import gtk.HeaderBar;
import gtk.Box;
import gtk.Button;
import gtk.Image;
import gtk.Arrow;

// Icons
import gio.ThemedIcon;

void main(string[] args)
{
	Main.init(args);
	auto window = new MainWindow("Hidden Window Title");
	
	window.setDefaultSize(400, 200);

    auto headerBar = new HeaderBar();
    headerBar.setTitle("HeaderBar Demo");
    headerBar.setShowCloseButton(true);

    /+
    + Add items to HeaderBar
    +/

    //Button with Gicon
    auto sendButton = new Button();
    auto icon = new ThemedIcon("mail-send-receive-symbolic");
    auto image = new Image();
    image.setFromGicon(icon, IconSize.BUTTON);
    sendButton.add(image);


    /*
    * Add container with Arrow buttons as it's children
    */
    auto box = new Box(Orientation.HORIZONTAL, 0);

    auto arrowLeftButton = new Button();
    arrowLeftButton.add(new Arrow(ArrowType.LEFT, ShadowType.NONE));
    box.add(arrowLeftButton);

    auto arrowRightButton = new Button();
    arrowRightButton.add(new Arrow(ArrowType.RIGHT, ShadowType.NONE));
    box.add(arrowRightButton);


    headerBar.packStart(box);
    headerBar.packEnd(sendButton);

    window.setTitlebar(headerBar);
	window.showAll();
	Main.run();
}
