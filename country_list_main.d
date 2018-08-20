import gtk.Main;
import gtk.MainWindow;

import gtk.Box;
import country_list_store;
import country_list_view;

void main(string[] args) 
{
	Main.init(args);
	auto window = new MainWindow("Tree View Demo");
	window.setDefaultSize(400, 200);

	auto box = new Box(Orientation.VERTICAL, 0);
	auto countryListStore = new CountryListStore();
	countryListStore.addCountry("Ghana", "Accra", "200");
	countryListStore.addCountry("USA", "Doesn't exist", "300");
	countryListStore.addCountry("Nigeria", "Lagos", "100");

	auto countryListView = new CountryListView(countryListStore);

	box.packStart(countryListView, false, false, 0);

	window.add(box);
	window.showAll();
	Main.run();
}