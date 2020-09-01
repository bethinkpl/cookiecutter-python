#!/bin/bash
poetry update
git init
git add .
git commit -m "initial commit"
{%- if cookiecutter.create_remote == true -%}
git remote add origin git@github.com:{{ cookiecutter.github_org_name }}/{{ cookiecutter.project_name }}.git
git push -u origin master
{% endif %}
