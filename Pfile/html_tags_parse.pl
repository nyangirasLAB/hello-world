# -*- coding: utf-8 -*-

import urllib2
from HTMLParser import HTMLParser

class TestParser(HTMLParser):

	def __init__(self):
		HTMLParser.__init__(self)

	def handle_starttag(self,tagname,attribute):
		if tagname.lower() == "a":
			for i in attribute:
				if i[0].lower() == "href":
					print i[1]


if __name__ == "__main__":

	path = "http://www.yahoo.co.jp/"

	htmldata = urllib2.urlopen(path)

	parser = TestParser()
	parser.feed(htmldata.read())

	parser.close()
	htmldata.close()
