class HomeScreen < PM::TableScreen
  title "Home"

  refreshable

  def table_data
    [{
      cells: Array.new(5).map do |n|
        {
          title: "Photo 1",
          subtitle: "3.2 MB, modified: 2014-02-13",
          height: 100,
          action: :open_file,
          arguments: { path: "/sharedfiles/files", name: "Photo 1", type: "jpg"},
          remote_image: {
            url: "http://placekitten.com/90/90",
            placeholder: "icon-row-file-small.jpg",
            size: 10,
            radius: 3,
            content_mode: :mode_redraw
          }
        }
      end
    }]
  end

  def on_refresh
    update_table_data
    stop_refreshing
  end

  def open_file(args={})
    PM.logger.debug args
  end

end
