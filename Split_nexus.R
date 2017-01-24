rm(list=ls())

setwd("C:/Users/njk72/Desktop/processing  nexus")

library("ape")

alignment<-read.nexus.data("All_dating_mcorrected.nex")
alignment2<-as.DNAbin(alignment)
alignment3<-as.matrix(alignment2)

COII<-alignment3[,1:711]
ArgK<-alignment3[,712:1211]
H3<-alignment3[,1212:1539]
Ribo<-alignment3[,1540:2173]

write.nexus.data(COII,"COII.nex", interleaved = FALSE)
write.nexus.data(ArgK,"ArgK.nex", interleaved = FALSE)
write.nexus.data(H3,"H3.nex", interleaved = FALSE)
write.nexus.data(Ribo,"28S.nex", interleaved = FALSE)
