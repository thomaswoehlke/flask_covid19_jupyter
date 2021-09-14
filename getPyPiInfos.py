
packages = []

with open('requirements.in') as f:
    for line in f.readlines():
        print(line)

if not f.closed:
    f.close()
