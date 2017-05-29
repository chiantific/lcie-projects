library(devtools)
install_github('wencke/wencke.github.io',force=TRUE)
library(GOplot)
filename<-"BPLac24h.txt"
go<-read.table(filename,sep="\t",header=TRUE)
filename<-"Llac_q0.05.txt"
genes<-read.table(filename,sep="\t",header=TRUE)
circ <- circle_dat(go,genes)
filename<-"circlac6h.txt"
write.table(circ,file=filename,sep="\t",col.names=TRUE,row.names=FALSE)

##Generate a circular visualization of the results of gene- annotation enrichment analysis
GOCircle(circ,title="terms",nsub=10)
GOBar(circ,display='multiple')
GOBubble(circ)
GOBubble(circ, labels = 3)
GOCircle(circ,label.size=3)
#Generate the matrix with a list of selected genes
