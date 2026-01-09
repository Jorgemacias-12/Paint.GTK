#include <gtkmm.h>

class MainWindow : public Gtk::Window {
    public:
        MainWindow() {
            set_title("Paint.GTK")
            set_default_size(800, 600)
        }
};