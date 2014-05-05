import sys
#Alignment file is the first arument

#Script expects command in the following format - - - -
print '#lignment_to_moses.py <alignment_file> <1stLanguage_inputFile> <2ndLanguage_inputFile> <outputFile_l1> <outputFile_l2>'

align=open(sys.argv[1]).read().split('\n')
l1=open(sys.argv[2]).read().split('\n')
l2=open(sys.argv[3]).read().split('\n')

output_l1=open(sys.argv[4],"w")
output_l2=open(sys.argv[5],"w")

for line in align:
  try:
    h=line.split(' <=> ')
    print h
    if "omitted" in h:
      continue
    l1_list=h[0].split(",") 
    l2_list=h[1].split(",") 
    for i in l1_list:
        output_l1.write(l1[int(i)-1]+" ")
    output_l1.write("\n")
    for j in l2_list:
      output_l2.write(l2[int(j)-1]+" ")
    output_l2.write("\n")
  except:
    continue

  
