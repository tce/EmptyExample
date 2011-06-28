#!/bin/sh

echo "Username is     " $1
echo "Project name is " $2



mv EmptyExample.xcodeproj/xcuserdata/teskridge.xcuserdatad/xcschemes/EmptyExample.xcscheme EmptyExample.xcodeproj/xcuserdata/teskridge.xcuserdatad/xcschemes/$2.xcscheme

mv EmptyExample.xcodeproj/xcuserdata/teskridge.xcuserdatad EmptyExample.xcodeproj/xcuserdata/$1.xcuserdatad 

mv EmptyExample.xcodeproj/project.xcworkspace/xcuserdata/teskridge.xcuserdatad EmptyExample.xcodeproj/project.xcworkspace/xcuserdata/$1.xcuserdatad



mv EmptyExample.xcodeproj $2.xcodeproj

find . -type f | xargs sed -i "" "s/EmptyExample/$2/g"
find . -type f | xargs sed -i "" "s/teskridge/$1/g"
cd ..
mv EmptyExample $2
cd $2





