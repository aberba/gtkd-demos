module country_list_store;

private import gtk.ListStore;
private import gtk.TreeIter;
private import gtkc.gobjecttypes;

class CountryListStore: ListStore
{
	this()
	{
		super([GType.STRING, GType.STRING, GType.STRING]);
	}

	public void addCountry(in string name, in string capital, in string population)
	{
		TreeIter inter = this.createIter();
		this.setValue(inter, 0, name);
		this.setValue(inter, 1, capital);
		this.setValue(inter, 2, population);
	}
}