#! /bin/bash
set -xe

python setup.py clean --all sdist bdist_wheel

for package in dist/*.whl dist/*.tar.gz
do
    twine register "$package"
done

twine upload --skip-existing dist/*
