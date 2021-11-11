# lpunpack and lpmake

build :
for linux
./make.sh
for cygwin
./cygmake.sh

# Notice
if meet error like unknow type of _Bool   change the file which report error 
add 
#
typedef bool _Bool
