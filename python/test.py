
# check_installed_packages.py
import pkg_resources

installed_packages = pkg_resources.working_set
sorted_packages = sorted(["{}=={}".format(i.key, i.version) for i in installed_packages])

for package in sorted_packages:
    print(package)
