
chn1 <- c(48,
         41,
         45,
         50,
         48,
         46,
         55,
         44)
usa1 <- c(46,
         48,
         38,
         38,
         40,
         39,
         40,
         46)
chn2 <- c(21,
          41,
          36,
          26,
          29,
          30,
          25,
          34)
usa2 <- c(26,
          33,
          41,
          43,
          41,
          44,
          41,
          36)
year <- c(2008,
          2009,
          2010,
          2011,
          2012,
          2013,
          2014,
          2015)
chgdp <- c(3471.2,
           3838.4,
           4560.5,
           5633.8,
           6337.9,
           7077.8,
           7683.5,
           8069.2)
usgdp <- c(48401.4,
           47001.6,
           48374.1,
           49781.8,
           51433.0,
           52749.9,
           54539.7,
           56115.7)
data <- as.data.frame(cbind(chn1,usa1,chn2,usa2,year))

windows(width=50,height=30)
par(mfcol=c(2,2))
par(family="serif",bty="n",xaxt="n",yaxt="n")
plot(year,usa1,type="n",ylim=c(20,100),col="",ylab="",xlab="")
abline(h=c(seq(20,100,10)),col="lightgrey")
points(year,usa1,type="o",col="blue")
points(year,chn1,type="o",col="red")
points(year,usa2,type="o",col="blue",lty=2,pch=2)
points(year,chn2,type="o",col="red",lty=2,pch=2)
par(xaxt="s",yaxt="s")
axis(1,at=c(seq(2008,2015,1)),col="white")
axis(2,at=c(seq(20,100,10)),labels=paste(c(seq(20,100,10)),"%"),col="white",las=2)
legend("topleft",legend=c("USA","China"),col=c("blue","red"),pch=1,lty=1,
       title="U.S. leading world economy?",bty="o",bg="white",
       yjust=.1,box.col="lightgrey")
legend("topright",legend=c("USA","China"),col=c("blue","red"),pch=2,lty=2,
       title="China leading world economy?",bty="o",bg="white",
       yjust=.1,box.col="lightgrey")
title("Perceived Balance of Economic Power\nbetween the U.S. and China",adj=0.5)
mtext("Data: Pew Research Center Global Indicators Database",side=1,adj=0,
      line=3,font=3,cex=.75)
par(family="serif",bty="n",xaxt="n",yaxt="n")
plot(year,log(usgdp/chgdp),type="n",ylim=c(-2.75,2.75),
     xlab="",ylab="Economic Power Balance")
abline(h=c(seq(-2.75,2.75,.5)),col="lightgrey")
abline(h=0,col="black")
points(year,log(usgdp/chgdp),type="o",col="blue")
points(year,log(chgdp/usgdp),type="o",col="red")
par(xaxt="s",yaxt="s")
axis(1,at=c(seq(2008,2015,1)),col="white")
axis(2,at=c(seq(-2.75,2.75,.5)),col="white",las=2)
legend("right",legend=c("USA","China"),col=c("blue","red"),pch=1,lty=1,
       title="Balance of economic power?",bty="o",bg="white",
       yjust=.1,box.col="lightgrey")
title("Actual Balance of Economic Power\nbetween the U.S. and China",adj=0.5)
mtext("Data: World Bank",side=1,adj=0,line=3,font=3,cex=.75)


chme <- c(600450038876.8,
          721628353820.0,
          783324307855.4,
          891470218006.6,
          993849646991.1,
          1101904686531.6,
          1226544664053.1,
          1337435277780.7
)
usme <- c(621131000000.0,
          668567000000.0,
          698180000000.0,
          711338000000.0,
          684780000000.0,
          639704000000.0,
          609914000000.0,
          596024000000)
par(family="serif",bty="n",xaxt="n",yaxt="n")
plot(year,log(usme/chme),type="n",ylim=c(-.8,.8),
     xlab="",ylab="Balance of Military Expenditures")
abline(h=c(seq(-.8,.8,.2)),col="lightgrey")
abline(h=0,col="black")
points(year,log(usme/chme),type="o",col="blue")
points(year,log(chme/usme),type="o",col="red")
par(xaxt="s",yaxt="s")
axis(1,at=c(seq(2008,2015,1)),col="white")
axis(2,at=c(seq(-.8,.8,.2)),col="white",las=2)
legend("right",legend=c("USA","China"),col=c("blue","red"),pch=1,lty=1,
       title="Balance of miltary expenditures?",bty="o",bg="white",
       yjust=.1,box.col="lightgrey")
title("Actual Balance of Military Expenditures\nbetween the U.S. and China",adj=0.5)
mtext("Data: World Bank",side=1,adj=0,line=3,font=3,cex=.75)

usmpc <- c(4.2,
           4.6,
           4.7,
           4.6,
           4.2,
           3.8,
           3.5,
           3.3)
chmpc <- c(1.9,
           2.1,
           1.9,
           1.8,
           1.8,
           1.9,
           1.9,
           1.9)
par(family="serif",bty="n",xaxt="n",yaxt="n")
plot(year,log(usmpc/chmpc),type="n",ylim=c(-1,1),
     xlab="",ylab="Balance of Military Expenditures")
abline(h=c(seq(-1,1,.2)),col="lightgrey")
abline(h=0,col="black")
points(year,log(usmpc/chmpc),type="o",col="blue")
points(year,log(chmpc/usmpc),type="o",col="red")
par(xaxt="s",yaxt="s")
axis(1,at=c(seq(2008,2015,1)),col="white")
axis(2,at=c(seq(-1,1,.2)),col="white",las=2)
legend("right",legend=c("USA","China"),col=c("blue","red"),pch=1,lty=1,
       title="Balance of miltary expenditures?",bty="o",bg="white",
       yjust=.1,box.col="lightgrey")
title("Balance of Military Expenditures per Capita\nbetween the U.S. and China",adj=0.5)
mtext("Data: World Bank",side=1,adj=0,line=3,font=3,cex=.75)
mtext("ThePoliticalScientist1.blogspot.com",side=1,adj=1,line=3,cex=.75,font=2)

