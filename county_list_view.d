module country_list_view;

private import gtk.TreeView;
private import gtk.TreeViewColumn;
private import gtk.ListStore;
private import gtk.CellRendererText;
private import gtkc.gobjecttypes;

class CountryListView: TreeView
{
	private TreeViewColumn countryColumn;
	private TreeViewColumn capitalColumn;
	private TreeViewColumn populationColumn;

	this(ListStore store)
	{
		countryColumn = new TreeViewColumn(
			"Country", new CellRendererText(), "text", 0
			);
		this.appendColumn(countryColumn);
		capitalColumn = new TreeViewColumn(
			"Capital", new CellRendererText(), "text", 1
			);
		this.appendColumn(capitalColumn);

		populationColumn = new TreeViewColumn(
			"Population", new CellRendererText(), "text", 2
			);
		this.appendColumn(populationColumn);

		this.setModel(store);
	}
}