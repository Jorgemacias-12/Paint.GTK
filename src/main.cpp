#include <gtkmm.h>
#include "views/MainWindow.cpp"

int main(int argc, char* argv[]) {
    auto app = Gtk::Application::create("com.jamz.paint.gtk");
    return app->make_window_and_run<>
}