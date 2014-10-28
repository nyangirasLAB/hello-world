# -*- coding: utf-8 -*-

import urllib2

if __name__ == "__main__":

	path = "http://www.yahoo.co.jp/"

	htmldata = urllib2.urlopen(path)
	print unicode(htmldata.read(),"utf-8")

	htmldata.close()
