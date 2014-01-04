#!/usr/bin/env python
import json
import urllib2
import datetime

url = "http://api.openweathermap.org/data/2.5/forecast/daily?units=metric&lat=46.7667&lon=23.5833"
headers = {
  'User-Agent' : 'ConkyWeatherBot/0.1'
}

def celsius(fahrenheit):
    return (int(fahrenheit) - 32) * 5 / 9

def city_name(j):
    return str(j['city']['name'])

def get_day_forecast(j, i=0):
    ts = int(j['list'][i]['dt'])
    d = datetime.datetime.fromtimestamp(ts)
    return d.strftime("%a")

def get_temp(j, i=0):
    return str(j['list'][i]['temp']['day']) + 'C'

def get_desc(j, i=0):
    return str(j['list'][i]['weather'][0]['description'])
    

req = urllib2.Request(url, None, headers)
response = urllib2.urlopen(req)
j = json.loads(response.read())
if str(j['cod']) == '200':
    print city_name(j)
    print ''
    for i in range(0, 5):
       print "  " + get_day_forecast(j,i) + " " + get_temp(j,i)  + ' ' + get_desc(j,i)
else:
    print 'No Weather Info'
