#!/bin/bash
poetry install
poetry add -D black pylint mypy pytest pytest coverage[toml] hypothesis nox pre-commit click
git init
git add .
git commit -m "initial commit"
git branch -M master
{%- if cookiecutter.create_remote == true -%}
echo "Creating repo in git@github.com:{{ cookiecutter.github_org_name }}/{{ cookiecutter.project_name }}.git"
git remote add origin git@github.com:{{ cookiecutter.github_org_name }}/{{ cookiecutter.project_name }}.git
git push -u origin master
{% endif %}
