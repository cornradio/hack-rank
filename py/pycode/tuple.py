# http://c.biancheng.net/view/4360.html
# tuple is a list can not be changed surronded by ()
tuple_a = (1,2,3,4)
tuple_b = 1,2,3,4
tuple_c = "goodluck","goodlife"
tuple_d = "G",
# see
print(tuple_a,tuple_b,tuple_c,tuple_d)
# slice tuples
print(tuple_a[0])
print(tuple_a[0:3])
print(tuple_a[1:-1])
# try types
print(type(tuple_c))

# namedtuple is like a small class
import collections
point = collections.namedtuple("point","x y")
# you can also write like this :
# point = collections.namedtuple("point",['x','y'])
a = point(1,2)
b = point(3,3)
c = point(a.x+b.x,a.y+b.y)
print(c)
