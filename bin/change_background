#!/usr/bin/env python
# -*- coding: utf-8 -*-
import platform
import urllib
import urllib2
import json
import os

from random import choice
from subprocess import call


url = 'http://www.reddit.com/r/earthporn.json'
headers = {
  'User-Agent' : 'PrettyBackgroundBot/0.1'
}
working_dir = os.path.dirname(os.path.abspath(__file__))
directory = os.path.join(working_dir, 'tmp')
operating_system = platform.system().lower()
desktop_session = os.environ.get('DESKTOP_SESSION').lower()


def earthporn_frontpage():
    req = urllib2.Request(url, None, headers)
    response = urllib2.urlopen(req)
    return json.loads(response.read())['data']['children']


def get_random_link():
    link = choice(earthporn_frontpage())['data']
    url = str(link['url'])
    if url.startswith('http://imgur') and not extension_exists(url):
        link['url'] += '.png'
    return link


def extension_exists(url):
    return url.endswith('.jpg') or url.endswith('.jpeg') or url.endswith('.png')


def set_wallpapper():
    if operating_system == 'linux':
        if desktop_session == 'gnome':
            link = get_random_link()
            file_path = os.path.join(directory, link['name'])
            print file_path
            urllib.urlretrieve (link['url'], file_path)
            call(["gsettings", "set", "org.gnome.desktop.background", "picture-uri", "file://" + file_path])
        else:
            print('Unkown desktop manager')
    elif operating_system == 'windows':
        pass
    else:
        print('OS not supported')


if not os.path.exists(directory):
      os.makedirs(directory)
set_wallpapper()
