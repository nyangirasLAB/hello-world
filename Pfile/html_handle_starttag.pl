# -*- coding: utf-8 -*-

from urllib2 import urlopen
from HTMLParser import HTMLParser

class TestParser(HTMLParser):

	def __init__(self):
		HTMLParser.__init__(self)

#	def handle_starttag(self,tagname,attribute):
#		if(tagname == "img"):
#			print dict(attribute)["src"]

url = "http://www.yahoo.co.jp"
http_img = TestParser()
#http_img.feed(urlopen(url).read())
http_img.handle_starttag(urlopen(url),"img",["src","http://yahoo.co.jp/*"])

http_img.close()
