# -*- coding: utf-8 -*-
from __future__ import absolute_import, print_function, unicode_literals
from fabric.api import *

env.forward_agent = True
env.git_url = "git@github.com:Postcard/docker-images.git"
env.projectname = "docker-images"
env.hosts = ["34.251.244.127"]
env.user = "ec2-user"

@task
def release():
    with(cd("/home/ec2-user/docker-images")):
        run('git fetch origin')
        run('git reset --hard origin/master')
        run('./release.sh')