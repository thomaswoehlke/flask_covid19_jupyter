#!/usr/bin/env python

packages = []

with open('requirements.in') as f:
    for line in f.readlines():
        package = line.splitlines()[0].split('#')[0].split('[')[0]
        if len(package) > 0:
            packages.append(package)

if not f.closed:
    f.close()

print("")
for package in packages:
    out = '* [' + package + '](https://pypi.org/project/' + package + '/)'
    print(out)
print("")
