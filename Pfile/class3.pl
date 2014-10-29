# -*- coding: utf-8 -*-

class test(object):
	def initialize(obj, a, b):
		obj.a = a
		obj.b = b

test = test()
test.initialize(test, 10, "aaa")
print test.a
print test.b
