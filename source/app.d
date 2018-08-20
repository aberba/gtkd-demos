import gtk.Main,
       gtk.MainWindow;


void main(string[] args) 
{
    Main.init(args);

    auto window = new MainWindow("Window Demo");
    window.setDefaultSize(500, 200);
    window.showAll();


    Main.run();
}