#!/bin/bash

echo "#!/bin/bash"
echo ""

for package in `brew list`;
do
    echo "brew install $package"
done
