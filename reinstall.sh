rm dist -rf
python3 setup.py sdist bdist_wheel

python3 ../../python_package_reinstaller/reinstaller.py example_pkg_matkoniecz # handles multiple python versions - please create an issue if missing code is a problem
#cd dist
#pip3 uninstall example_pkg_matkoniecz -y
#pip3 install --user *.whl
#cd ..

python3 -m unittest
# twine upload dist/* # to upload to PyPi
