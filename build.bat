@echo off
node .\combine.js --source ./out --ext "*.h,*.cpp" --out all.txt
haxe build.hxml
rmdir /s /q build
mkdir build
cd build
cmake ..

cmake --build . --config Release

