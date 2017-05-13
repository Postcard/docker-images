# -*- coding: utf-8 -*-
from __future__ import absolute_import, print_function, unicode_literals
from fabric.api import *

env.forward_agent = True
env.git_url = "git@github.com:Postcard/docker-images.git"
env.projectname = "docker-images"
env.hosts = ["34.251.244.127"]

@task
def release():
    with(cd("/home/ec2-user")):
        run('git fetch origin')
        run('git reset --hard origin/%s')
        run('cd docker-images && chmod +x release.sh && ./release.sh')
