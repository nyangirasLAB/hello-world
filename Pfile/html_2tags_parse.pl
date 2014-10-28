# -*- coding: utf-8 -*-

from urllib2 import urlopen
from HTMLParser import HTMLParser

class TestParser(HTMLParser):

	def __init__(self):
		HTMLParser.__init__(self)

	def handle_starttag(self,tagname,attribute):
		if(tagname == "img"):
#			print dict(attribute)["src"]
			html_tag = attribute

if __name__ == "__main__":

	path = "http://www.yahoo.co.jp/"

	parser = TestParser()
	parser.feed(urlopen(path).read())

	parser.close()
