
library(bnlearn)

string1 <- "[B01][B02][B03][B04][B05][B06][B07][B08][B09][B10]"
string2 <- "[B11][B12][B13][B14][B15][B16][B17][B18][B19][B20]"
string3 <- "[B21][B22][B23][B24][B25][B26][B27][B28][B29][B30]"
string4 <- "[B31][B32][B33][B34][B35][B36][B37][B38][B39][B40]"
string5 <- "[B41][B42][B43][B44][B45][B46][B47][B48][B49][B50]"
string6 <- "[B51][B52][B53][B54][B55][B56][B57][B58][B59][B60]"
string7 <- "[B61][B62][B63][B64][B65][B66][B67][B68][B69][B70]"
string8 <- "[B71][B72][B73][B74][B75][B76][B77][B78][B79][B80]"
string9 <- "[A15|B29:B30:B31][A14|B28:A15][A13|B27:A14][A12|B22:B23:B24:B25:B26:A13][A11|B20:B21][A09|A11:A12]"
string10 <- "[A04|B07:A09][A05|B08:B09][A06|B10:B11:B12][A07|B13:B14:B15][A08|A10:B16][A01|A04:B01:A05][A02|B02:B03:A06:B04][A03|A07:B05:A08:B06][S1|A01:A02:A03][A10|B17:B18:B19]"
string11 <- "[FOWTMalfunctions|S1:S2:S3:S4:S5][S3|A22:A23:A24][A22|B44:B45:B46][A23|B47:B48:B49:A25:A26][A24|B47:B50:B51:B52][A25|B53:A27][A26|B54:B55:B56][A27|B57:B58][S4|B59:A28:B60:B61:A29][A28|A30:A31][A29|B62:B63:B64][A30|B64:B65:A32][A31|B66:B67:B68][A32|B69:B70][A34|B74:B75:B76:B77][A36|B79:B80][A35|A36:B78][A33|B73:B72][S5|A34:A33:A35:B71][A19|B38:B39][A20|B40:B41][A21|B43:B42][A16|A19:B32:B33:B34][A17|B35:A20:B36][A18|A21:B37][S2|A16:A17:A18]"

dag <- model2network(paste0(string11,string1,string2,string3,string4,string5,string6,string7,string8,string9,string10))


lv <- c("Yes", "No")

B01 <- array(c(6E-6,1-6E-6),2,list(B01=lv))
B02 <- array(c(5E-6,1-5E-6),2,list(B02=lv))
B03 <- array(c(7E-7,1-7E-6),2,list(B03=lv))
B04 <- array(c(1.1E-5,1-1.1E-5),2,list(B04=lv))
B05 <- array(c(5E-6,1-5E-6),2,list(B05=lv))
B06 <- array(c(1E-6,1-1E-6),2,list(B06=lv))
B07 <- array(c(1.8E-5,1-1.8E-5),2,list(B07=lv))
B08 <- array(c(7.8E-5,1-7.8E-5),2,list(B08=lv))
B09 <- array(c(1E-6,1-1E-6),2,list(B09=lv))
B10 <- array(c(5E-5,1-5E-5),2,list(B10=lv))
B11 <- array(c(7E-6,1-7E-6),2,list(B11=lv))
B12 <- array(c(5.5E-5,1-5.5E-5),2,list(B12=lv))
B13 <- array(c(1E-4,1-1E-4),2,list(B13=lv))
B14 <- array(c(1E-6,1-1E-6),2,list(B14=lv))
B15 <- array(c(5E-6,1-5E-6),2,list(B15=lv))
B16 <- array(c(8.65E-6,1-8.65E-6),2,list(B16=lv))
B17 <- array(c(1.3E-5,1-1.3E-5),2,list(B17=lv))
B18 <- array(c(3E-6,1-3E-6),2,list(B18=lv))
B19 <- array(c(3E-6,1-3E-6),2,list(B19=lv))
B20 <- array(c(1E-5,1-1E-5),2,list(B20=lv))
B21 <- array(c(1.7E-5,1-1.7E-5),2,list(B21=lv))
B22 <- array(c(1.01E-5,1-1.01E-5),2,list(B22=lv))
B23 <- array(c(6.93E-6,1-6.93E-6),2,list(B23=lv))
B24 <- array(c(8E-6,1-8E-6),2,list(B24=lv))
B25 <- array(c(4.19E-6,1-5.56E-6),2,list(B25=lv))
B26 <- array(c(5.56E-6,1-5.56E-6),2,list(B26=lv))
B27 <- array(c(4.07E-5,1-4.07E-5),2,list(B27=lv))
B28 <- array(c(3.78E-5,1-3.78E-5),2,list(B28=lv))
B29 <- array(c(1.6E-5,1-1.6E-5),2,list(B29=lv))
B30 <- array(c(1.7E-5,1-1.7E-5),2,list(B30=lv))
B31 <- array(c(5.38E-6,1-5.38E-6),2,list(B31=lv))
B32 <- array(c(1E-5,1-1E-5),2,list(B32=lv))
B33 <- array(c(3E-5,1-3E-5),2,list(B33=lv))
B34 <- array(c(6.8E-6,1-6.8E-6),2,list(B34=lv))
B35 <- array(c(1E-5,1-1E-5),2,list(B35=lv))
B36 <- array(c(1E-5,1-1E-5),2,list(B36=lv))
B37 <- array(c(2.14E-6,1-2.14E-6),2,list(B37=lv))
B38 <- array(c(4.8E-5,1-4.8E-5),2,list(B38=lv))
B39 <- array(c(7.9E-7,1-7.9E-7),2,list(B39=lv))
B40 <- array(c(5.7E-5,1-5.7E-5),2,list(B40=lv))
B41 <- array(c(5.7E-5,1-5.7E-5),2,list(B41=lv))
B42 <- array(c(7E-6,1-7E-6),2,list(B42=lv))
B43 <- array(c(1.8E-5,1-1.8E-5),2,list(B43=lv))
B44 <- array(c(1.8E-6,1-1.8E-6),2,list(B44=lv))
B45 <- array(c(1.8E-6,1-1.8E-6),2,list(B45=lv))
B46 <- array(c(1.44E-6,1-1.44E-6),2,list(B46=lv))
B47 <- array(c(2.14E-6,1-2.14E-6),2,list(B47=lv))
B48 <- array(c(2.4E-7,1-2.4E-7),2,list(B48=lv))
B49 <- array(c(1.3E-6,1-1.3E-6),2,list(B49=lv))
B50 <- array(c(1.2E-5,1-1.2E-5),2,list(B50=lv))
B51 <- array(c(1E-5,1-1E-5),2,list(B51=lv))
B52 <- array(c(3E-6,1-3E-6),2,list(B52=lv))
B53 <- array(c(3E-7,1-3E-7),2,list(B53=lv))
B54 <- array(c(1E-6,1-1E-6),2,list(B54=lv))
B55 <- array(c(2.4E-7,1-2.4E-7),2,list(B55=lv))
B56 <- array(c(3E-7,1-3E-7),2,list(B56=lv))
B57 <- array(c(1E-6,1-1E-6),2,list(B57=lv))
B58 <- array(c(3E-7,1-3E-7),2,list(B58=lv))
B59 <- array(c(1.63E-5,1-1.63E-5),2,list(B59=lv))
B60 <- array(c(1E-7,1-1E-7),2,list(B60=lv))
B61 <- array(c(8.4E-5,1-8.4E-5),2,list(B61=lv))
B62 <- array(c(5.85E-6,1-5.85E-6),2,list(B62=lv))
B63 <- array(c(1.17E-6,1-1.17E-6),2,list(B63=lv))
B64 <- array(c(2.14E-6,1-2.14E-6),2,list(B64=lv))
B65 <- array(c(2.17E-6,1-2.17E-6),2,list(B65=lv))
B66 <- array(c(3.61E-6,1-3.61E-6),2,list(B66=lv))
B67 <- array(c(2.1E-7,1-2.1E-7),2,list(B67=lv))
B68 <- array(c(2.89E-6,1-2.89E-6),2,list(B68=lv))
B69 <- array(c(7.08E-6,1-7.08E-6),2,list(B69=lv))
B70 <- array(c(7.2E-7,1-7.2E-7),2,list(B70=lv))
B71 <- array(c(2.16E-5,1-2.16E-5),2,list(B71=lv))
B72 <- array(c(5.71E-6,1-5.71E-6),2,list(B72=lv))
B73 <- array(c(1.8E-6,1-1.8E-6),2,list(B73=lv))
B74 <- array(c(4.91E-5,1-4.91E-5),2,list(B74=lv))
B75 <- array(c(7.99E-6,1-7.99E-6),2,list(B75=lv))
B76 <- array(c(3.77E-5,1-3.77E-5),2,list(B76=lv))
B77 <- array(c(2.05E-5,1-2.05E-5),2,list(B77=lv))
B78 <- array(c(1.26E-5,1-1.26E-5),2,list(B78=lv))
B79 <- array(c(2.74E-5,1-2.74E-5),2,list(B79=lv))
B80 <- array(c(5.25E-6,1-5.25E-6),2,list(B80=lv))
A09 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(A09=lv,A11=lv,A12=lv))
A10 <- array(c(1,0,rep(c(0,1),7)),c(2,2,2,2),list(A10=lv,B17=lv,B18=lv,B19=lv))
A11 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(A11=lv,B20=lv,B21=lv))
A12 <- array(c(rep(c(1,0),63),0,1),rep(2,7),list(A12=lv,B22=lv,B23=lv,B24=lv,B25=lv,B26=lv,A13=lv))
A13 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(A13=lv,B27=lv,A14=lv))
A14 <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(A14=lv,B28=lv,A15=lv))
A15 <- array(c(1,0,rep(c(0,1),7)), c(2,2,2,2),list(A15=lv,B29=lv,B30=lv,B31=lv))
A08 <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(A08=lv,A10=lv,B16=lv))
A07 <- array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(A07=lv,B13=lv,B14=lv,B15=lv))
A06 <- array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(A06=lv,B10=lv,B11=lv,B12=lv))
A05 <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(A05=lv,B08=lv,B09=lv))
A04 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(A04=lv,B07=lv,A09=lv))
A01 <- array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(A01=lv,A04=lv,B01=lv,A05=lv))
A02 <- array(c(rep(c(1,0),15),0,1),c(2,2,2,2,2),list(A02=lv,B02=lv,B03=lv,A06=lv,B04=lv))
A03 <- array(c(rep(c(1,0),15),0,1),c(2,2,2,2,2),list(A03=lv,A07=lv,B05=lv,A08=lv,B06=lv))
S1 <- array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(S1=lv,A01=lv,A02=lv,A03=lv))
A19 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(A19=lv,B38=lv,B39=lv))
A20 <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(A20=lv,B40=lv,B41=lv))
A21 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(A21=lv,B42=lv,B43=lv))
A18 <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(A18=lv,B37=lv,A21=lv))
A16 <- array(c(rep(c(1,0),15),0,1),c(2,2,2,2,2),list(A16=lv,A19=lv,B32=lv,B33=lv,B34=lv))
A17 <- array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(A17=lv,A20=lv,B35=lv,B36=lv))
S2 <- array(c(rep(c(1,0),7),0,1),c(2,2,2,2),list(S2=lv,A16=lv,A17=lv,A18=lv))
S5 <- array(c(rep(c(1,0),15),0,1),c(2,2,2,2,2),list(S5=lv,A34=lv,B71=lv,A33=lv,A35=lv))
A35 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(A35=lv,A36=lv,B78=lv))
A36 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(A36=lv,B80=lv,B79=lv))
A33 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(A33=lv,B72=lv,B73=lv))
A34 <- array(c(rep(c(1,0),15),0,1),c(2,2,2,2,2),list(A34=lv,B74=lv,B75=lv,B76=lv,B77=lv))
S4 <- array(c(rep(c(1,0),2^5-1),0,1),rep(2,6),list(S4=lv,B59=lv,A28=lv,B60=lv,B61=lv,A29=lv))
A28 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(A28=lv,A30=lv,A31=lv))
A29 <- array(c(rep(c(1,0),2^3-1),0,1),c(2,2,2,2),list(A29=lv,B62=lv,B63=lv,B64=lv))
A30 <- array(c(rep(c(1,0),2^3-1),0,1),c(2,2,2,2),list(A30=lv,B64=lv,B65=lv,A32=lv))
A32 <- array(c(1,0,0,1,0,1,0,1),c(2,2,2),list(A32=lv,B69=lv,B70=lv))
A31 <- array(c(rep(c(1,0),2^3-1),0,1),c(2,2,2,2),list(A31=lv,B66=lv,B67=lv,B68=lv))
FOWTMalfunctions <- array(c(rep(c(1,0),2^5-1),0,1),rep(2,6),list(FOWTMalfunctions=lv,S1=lv,S2=lv,S3=lv,S4=lv,S5=lv))
S3 <- array(c(rep(c(1,0),2^3-1),0,1),rep(2,4),list(S3=lv,A22=lv,A23=lv,A24=lv))
A22 <- array(c(rep(c(1,0),2^3-1),0,1),rep(2,4),list(A22=lv,B44=lv,B45=lv,B46=lv))
A23 <- array(c(rep(c(1,0),2^5-1),0,1),rep(2,6),list(A23=lv,B47=lv,B48=lv,B49=lv,A25=lv,A26=lv))
A24 <- array(c(rep(c(1,0),2^4-1),0,1),rep(2,5),list(A24=lv,B47=lv,B50=lv,B51=lv,B52=lv))
A25 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(A25=lv,B53=lv,A27=lv))
A26 <- array(c(rep(c(1,0),2^3-1),0,1),rep(2,4),list(A26=lv,B54=lv,B55=lv,B56=lv))
A27 <- array(c(1,0,1,0,1,0,0,1),c(2,2,2),list(A27=lv,B58=lv,B57=lv))

windturbine <- custom.fit(dag,list(
 B01=B01,B02=B02,B03=B03,B04=B04,B05=B05,B06=B06,B07=B07,B08=B08,B09=B09,B10=B10,
 B11=B11,B12=B12,B13=B13,B14=B14,B15=B15,B16=B16,B17=B17,B18=B18,B19=B19,B20=B20,
 B21=B21,B22=B22,B23=B23,B24=B24,B25=B25,B26=B26,B27=B27,B28=B28,B29=B29,B30=B30,
 B31=B31,B32=B32,B33=B33,B34=B34,B35=B35,B36=B36,B37=B37,B38=B38,B39=B39,B40=B40,
 B41=B41,B42=B42,B43=B43,B44=B44,B45=B45,B46=B46,B47=B47,B48=B48,B49=B49,B50=B50,
 B51=B51,B52=B52,B53=B53,B54=B54,B55=B55,B56=B56,B57=B57,B58=B58,B59=B59,B60=B60,
 B61=B61,B62=B62,B63=B63,B64=B64,B65=B65,B66=B66,B67=B67,B68=B68,B69=B69,B70=B70,
 B71=B71,B72=B72,B73=B73,B74=B74,B75=B75,B76=B76,B77=B77,B78=B78,B79=B79,B80=B80,
 A09=A09,A11=A11,A12=A12,A13=A13,A14=A14,A15=A15,A10=A10,A08=A08,A07=A07,A06=A06,A05=A05,
 A04=A04,A03=A03,A02=A02,A01=A01,S1=S1,A16=A16,A17=A17,A18=A18,A19=A19,A20=A20,A21=A21,S2=S2,
 A33=A33,A34=A34,A35=A35,A36=A36,S5=S5,A28=A28,A29=A29,A30=A30,A31=A31,A32=A32,S4=S4,
 FOWTMalfunctions=FOWTMalfunctions,S3=S3,A22=A22,A23=A23,A24=A24,A25=A25,A26=A26,A27=A27
))


usethis::use_data(windturbine, overwrite = TRUE)
