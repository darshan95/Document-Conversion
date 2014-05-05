import sys
s=sys.argv[1]
o=open(s+"_rs","w")
s=open(s)
for line in s:
  x=line.split()
  if len(x)!=0:
    o.write(line)

