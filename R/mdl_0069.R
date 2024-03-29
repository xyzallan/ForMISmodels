#' @title stand (stem), basal area (breast height)
#' @return stand (stem), basal area (breast height)
#' @param p01 stand (stem), species 
#' @param p02 species level (stem), basal area (breast height)
#' @param p03 stand (stem), basal area (breast height)
#' @param p04 stand (stem), number of trees 
#' @param p05 stand (stem), age 
#' @param p06 stand (stem), height (100 years old)
#' @param p07 stand (area), latitude 
#' @param p08 stand (area), altitude 
#' @param p09 stand (stem), thinning exists 
#' @export
#' @rdname mdl_G_69
mdl_G_69 <- function(p01, p02, p03, p04, p05, p06, p07, p08, p09){

	xmdl.1<-function(p02, p03, p04, p05, p06, p07, p08, p09){
		c15 = -.00592599
		c14 = -1.75160
		c13 = 0.8300919
		c12 = 0.0637421
		c11 = 0.0
		c10 = -0.0111567
		c02 = 0.796896
		c03 = -0.0000976
		c04 = 0.230066
		c05 = -0.0005775
		c06 = -0.570857
		c07 = -0.015523
		c08 = 0.0
		c09 = 0.0
		c01 = -0.0107718
		exp(p02 * c01+log(p02) * c02+p04 * c03+log(p04) * c04+p05 * c05+log(p05) * c06+ipf1 * c07+log(ipf1) * c08+p06 * c09+p07 * c10+p08 * c11+p09 * c12+sqrt(p02 / p04 * 4 / 3.1415926) * c14+c13)
	}

	xmdl.2<-function(p02, p03, p04, p05, p06, p07, p08, p09){
		c15 = 0.0
		c14 = 0.0
		c13 = 1.5293793
		c12 = -0.0318464
		c11 = 0.0
		c10 = -0.0269193
		c02 = 0.832287
		c03 = -0.0001109
		c04 = 0.271386
		c05 = 0.0
		c06 = -0.735989
		c07 = -0.0196143
		c08 = 0.0
		c09 = 0.00127135
		c01 = -0.0221875
		exp(p02 * c01+log(p02) * c02+p04 * c03+log(p04) * c04+p05 * c05+log(p05) * c06+ipf1 * c07+log(ipf1) * c08+p06 * c09+p07 * c10+p08 * c11+p09 * c12+sqrt(p02 / p04 * 4 / 3.1415926) * c14+c13)
	}

	xmdl.3<-function(p02, p03, p04, p05, p06, p07, p08, p09){
		c15 = -.00134245
		c14 = 0.0
		c13 = 0.1785211
		c12 = 0.0
		c11 = 0.0
		c10 = 0.0
		c02 = 0.748193
		c03 = -0.0000434
		c04 = 0.270476
		c05 = 0.0008236
		c06 = -0.718419
		c07 = -0.0174522
		c08 = 0.0
		c09 = 0.0
		c01 = -0.0110984
		exp(p02 * c01+log(p02) * c02+p04 * c03+log(p04) * c04+p05 * c05+log(p05) * c06+ipf1 * c07+log(ipf1) * c08+p06 * c09+p07 * c10+p08 * c11+p09 * c12+sqrt(p02 / p04 * 4 / 3.1415926) * c14+c13)
	}

	xmdl.7<-function(p02, p03, p04, p05, p06, p07, p08, p09){
		c15 = 0.0
		c14 = 0.0
		c13 = 0.7714665
		c12 = 0.125048
		c11 = 0.0
		c10 = 0.0
		c03 = 0.0
		c05 = 0.0
		c06 = -0.727278
		c07 = -0.022299
		c08 = 0.0
		c09 = 0.0
		c02 = 0.84742
		c01 = 0.0
		c04 = 0.144495
		exp(p02 * c01+log(p02) * c02+p04 * c03+log(p04) * c04+p05 * c05+log(p05) * c06+ipf1 * c07+log(ipf1) * c08+p06 * c09+p07 * c10+p08 * c11+p09 * c12+sqrt(p02 / p04 * 4 / 3.1415926) * c14+c13)
	}

	xmdl.19<-function(p02, p03, p04, p05, p06, p07, p08, p09){
		c15 = 0.0
		c14 = 0.0
		c13 = -1.6235950
		c12 = 0.0
		c11 = -.00036199
		c10 = 0.0354866
		c02 = 0.7823741
		c03 = -.00012511
		c04 = 0.239626
		c05 = -.00078715
		c06 = -0.733575
		c07 = 0.0
		c08 = -0.0823802
		c09 = 0.0
		c01 = 0.0
		exp(p02 * c01+log(p02) * c02+p04 * c03+log(p04) * c04+p05 * c05+log(p05) * c06+ipf1 * c07+log(ipf1) * c08+p06 * c09+p07 * c10+p08 * c11+p09 * c12+sqrt(p02 / p04 * 4 / 3.1415926) * c14+c13)
	}

	with(data.frame( p01, p02, p03, p04, p05, p06, p07, p08, p09 ),
		ifelse(p01 %in% c('MA'), xmdl.1(p02, p03, p04, p05, p06, p07, p08, p09), 
		ifelse(p01 %in% c('KU'), xmdl.2(p02, p03, p04, p05, p06, p07, p08, p09), 
		ifelse(p01 %in% c('KS'), xmdl.3(p02, p03, p04, p05, p06, p07, p08, p09), 
		ifelse(p01 %in% c('TA'), xmdl.7(p02, p03, p04, p05, p06, p07, p08, p09), 
		ifelse(p01 %in% c('TL','PN','PP','RE','KP','JA','VA','SA','LV','LM','HB'), xmdl.19(p02, p03, p04, p05, p06, p07, p08, p09), 
		NA
	))))))
}
