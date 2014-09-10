local path = package.path
package.path = "../src/?.lua;"..path
LXML = require("LXML")
package.path = path

print("Using the domHandler")
hd = LXML.handlers.domHandler()
pd = LXML.Parser(hd)

f = io.open("books.xml","r")
xmlStr = f:read("*a")
f:close()

pd:parse(xmlStr)

print("Using the printHandler")

hp = LXML.handlers.printHandler()
pp = LXML.Parser(hp)

pp:parse(xmlStr)