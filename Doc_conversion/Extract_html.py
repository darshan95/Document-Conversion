import bs4
import tinycss
import re
import sys
import codecs
from bs4 import BeautifulSoup,Comment

sys.stdout = codecs.open(sys.argv[2],"w",encoding="utf-8")
###
#htm = open('tmp2.htm','r').read().replace('\n','')
htm = open(sys.argv[1],'r').read().replace('\n','')
if sys.argv[3] == "English":
   esc_char = "." 
   table=esc_char  + "-----------------" + esc_char + "$Table"
   row="Row"
   col="column"
else:
   esc_char = "A" 
   table=esc_char + "------------------" + esc_char + "$rkYkfdk"
   row="iafdr"
   col="LraHk"

#htm = f.read()#'<!DOCTYPE html><html><body><p>Each table starts with a table tag. Each table row starts with a tr tag.Each table data starts with a td tag.</p><h4>One column:</h4><p><table border="1"><tr><td>100</td></tr></table></p><h4>One row and three columns:</h4><table border="1"><tr><td>100</td><td>200</td><td>300</td></tr></table><h4>Two rows and three columns:</h4><table border="1"><tr><td>100</td><td>200</td><td>300</td></tr><tr><td>400</td><td>500</td><td>600</td></tr></table></body></html>'
#p = re.compile("<![if*<!endif]>")
#htm = p.sub("",htm)
## for removing watermark
def watermark(css):
   parser = tinycss.make_parser()
   ret = {};
   ret['type'] = 0
   ret['value'] = ""
   for rule in parser.parse_stylesheet(css).rules:
      flag=0
      for declaration in rule.declarations:
         if declaration.name == 'font-family':
            for value in declaration.value:
               if value.value=="Bookman Old Style":
                  flag=flag+1
         if  declaration.name == 'color':
            for value in declaration.value:
               if value.value=="#AAA" :
                  flag = flag + 1
      selector = ""
      if flag == 2:
         for select in rule.selector:
            selector = selector + select.value
         if(selector[0] == '.'):
            ret['type']= 1
         else:
            ret['type']= 2
         ret['value'] = selector[1:]
         return ret
   return ret

def remove_watermark(soup):
   css = soup.head.style.contents[0]
   selector = watermark(css)
   if selector['type'] == 1:#class
      ls = soup.findAll('p',selector['value'])
      [element.extract() for element in ls]
   if selector['type'] == 2:#id
      ls = soup.findAll(id = selector['value'])
      [element.extract() for element in ls]
   return soup

def parseInit(htm): #removes html conditionals from htm
   htm = htm.replace("<[endif]>","")
   htm = htm.replace("<![endif]>","")
   pat = re.compile("<!?\[if !?\w*\]>")
   htm = pat.sub("",htm);
   return htm

def check_heading(name): # checks if a tag is heading
   if name == "h1" or name == "h2" or name == "h3" or name == "h4" or name == "h5" or name == "h6":
      return 1
   return 0

def extract(content,indent):
   global output
   if type(content) == bs4.NavigableString:
      try :
         #output = output + str(content)
         sys.stdout.write(content)
         #print content,
      except UnicodeEncodeError:
         pass;
   elif type(content) == unicode:
      try :
         #output = output + str(content)
         sys.stdout.write(content)
         #print content,
      except UnicodeEncodeError:
         pass;
   else:
      if content.name == 'table':
         sys.stdout.write(esc_char + indent  + table + esc_char);
         parseTable(content,indent)
         sys.stdout.write(indent  + table + esc_char);
      elif content.name == 'p':
         #sys.stdout.write("\n")
         sys.stdout.write(esc_char)
         for element in content:
            extract(element,indent)
         #output = output + "\n"
         #sys.stdout.write("\n")
         sys.stdout.write(esc_char)
         #sys.stdout.write("\n")
         #print
      elif check_heading(content.name) == 1:
         for element in content:
            extract(element,indent)
         sys.stdout.write(esc_char)
      else:
         for element in content:
            extract(element,indent)

def parseTable(content,indent):
   global output
   row_count = 1;
   for element in content.contents:
      if type(element) == bs4.NavigableString:
         try :
            #output = output + str(element)
            sys.stdout.write(element)
            #print element,
         except UnicodeEncodeError:
            pass;
      elif element.name == 'tr':
         sys.stdout.write(indent + "$" + row + str(row_count)  + esc_char);
         parseRow(element,indent)
         row_count = row_count + 1
      else:
         extract(element,indent)

def parseRow(content,indent):
   global output
   col_count = 1
   for element in content:
      if type(element) == bs4.NavigableString:
         try :
            #output = output + str(element)
            sys.stdout.write(element)
            #print element,
         except UnicodeEncodeError:
            pass;
      elif element.name == 'td':
         sys.stdout.write("$" + col + str(col_count) ) ;
         parseTd(element,indent)
         col_count = col_count + 1
      else:
         extract(element,indent)
   #output = output + "\n"
   sys.stdout.write(esc_char)

def parseTd(content,indent):
   global output
   for element in content:
      if type(element) == bs4.NavigableString:
         try:
            #output = output +  str(element) + " "
            sys.stdout.write(element)
            #sys.stdout.write(" ")
            #print element,
         except UnicodeEncodeError:
            pass
      elif type(element) == unicode:
         try:
            #output = output +  str(element) + " "
            sys.stdout.write(element)
            #sys.stdout.write(" ")
            #print element,
         except UnicodeEncodeError:
            pass
      else:
         extract(element,indent + "    " )

def extractTd(content):
   global output
   if type(content) == bs4.NavigableString:
      try :
         #output = output + str(content)
         sys.stdout.write(content)
         #print content,
      except UnicodeEncodeError:
         pass;
   elif type(content) == unicode:
      try :
         #output = output + str(content)
         sys.stdout.write(content)
         #print content,
      except UnicodeEncodeError:
         pass;

   else:
      if content.name == 'table':
         parseTable(content)
      elif content.name == 'p':
         for element in content:
            extractTd(element)
      elif check_heading(content.name) == 1:
         for element in content:
            extract(element,indent)
         sys.stdout.write(esc_char)
      else:
         for element in content:
            extractTd(element)

#print soup
htm = parseInit(htm)
soup = BeautifulSoup(htm)
soup = remove_watermark(soup)
comments = soup.findAll(text=lambda text:isinstance(text, Comment))
[comment.extract() for comment in comments]
for tag in soup.find_all('head'):
   tag.replaceWith('')
for tag in soup.find_all('img'):
   tag.replaceWith('')
soup = soup.html
#print htm
extract(soup,"   ")
#print output
