#!/bin/bash
poetry update
git init
git add
git commit -m "initial commit"
git remote add origin git@github.com:{{ cookiecutter.github_org_name }}/{{ cookiecutter.project_name }}.git
git push -u origin master