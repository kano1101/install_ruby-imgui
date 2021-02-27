git clone git@github.com:vaiorabbit/ruby-imgui.git

cd ruby-imgui/

gem install opengl-bindings
gem install ffi

git submodule update --init --recursive

cd cimgui
git pull origin master
git submodule update
cd ../

cd third_party
./glfw_build.sh
cd ../

cd imgui_dll
./imgui_dll_build.sh
cd ../

cd sample
ruby test_glfw_opengl2.rb
