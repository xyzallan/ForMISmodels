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
#' @rdname mdl_G_61
mdl_G_61 <- function(p01, p02, p03, p04, p05, p06, p07, p08, p09){

	xmdl.1<-function(p02, p03, p04, p05, p06, p07, p08, p09){
		c15 = -.00592599
		c14 = -1.7516000
		c13 = 0.6251269
		c12 = 0.0637421
		c11 = 0.0
		c10 = -.01115679
		c02 = 1.1999
		c03 = 0.0000115
		c04 = 0.164713
		c05 = -.0008842
		c06 = -0.564604
		c07 = -0.0153879
		c08 = 0.0
		c09 = 0.0
		c01 = -0.04978
		ipf1 = max(0.0635,p03-p02)
		exp(p02 * c01+log(p02) * c02+p04 * c03+log(p04) * c04+p05 * c05+log(p05) * c06+ipf1 * c07+log(ipf1) * c08+p06 * c09+p07 * c10+p08 * c11+p09 * c12+sqrt(p02 / p04 * 4 / 3.1415926) * c14+c13)
	}

	xmdl.2<-function(p02, p03, p04, p05, p06, p07, p08, p09){
		c15 = 0.0
		c14 = 0.0
		c13 = 1.5535993
		c12 = -0.0318464
		c11 = 0.0
		c10 = -0.0269193
		c02 = 0.794859
		c03 = -0.000121
		c04 = 0.255053
		c05 = 0.0
		c06 = -0.720252
		c07 = -0.0229139
		c08 = 0.0
		c09 = 0.00127135
		c01 = -0.01492
		ipf1 = max(0.0635,p03-p02)
		exp(p02 * c01+log(p02) * c02+p04 * c03+log(p04) * c04+p05 * c05+log(p05) * c06+ipf1 * c07+log(ipf1) * c08+p06 * c09+p07 * c10+p08 * c11+p09 * c12+sqrt(p02 / p04 * 4 / 3.1415926) * c14+c13)
	}

	xmdl.3<-function(p02, p03, p04, p05, p06, p07, p08, p09){
		c15 = -.00134245
		c14 = 0.0
		c13 = 0.1785211
		c12 = 0.0
		c11 = 0.0
		c10 = 0.0
		c02 = 0.931518
		c03 = -.00008747
		c04 = 0.124964
		c05 = -.00890226
		c06 = -0.498825
		c07 = -0.0049391
		c08 = 0.0
		c09 = 0.0
		c01 = -0.0085022
		ipf1 = max(0.0635,p03-p02)
		exp(p02 * c01+log(p02) * c02+p04 * c03+log(p04) * c04+p05 * c05+log(p05) * c06+ipf1 * c07+log(ipf1) * c08+p06 * c09+p07 * c10+p08 * c11+p09 * c12+sqrt(p02 / p04 * 4 / 3.1415926) * c14+c13)
	}

	xmdl.7<-function(p02, p03, p04, p05, p06, p07, p08, p09){
		c15 = 0.0
		c14 = 0.0
		c13 = 0.7714665
		c12 = 0.0
		c11 = 0.0
		c10 = 0.0
		c05 = 0.0
		c06 = -0.8426653
		c07 = -0.0146423
		c08 = 0.0
		c09 = 0.0
		c01 = 0.0
		c02 = 0.89659857
		c03 = 0.0
		c04 = 0.19935433
		ipf1 = max(0.0635,p03-p02)
		exp(p02 * c01+log(p02) * c02+p04 * c03+log(p04) * c04+p05 * c05+log(p05) * c06+ipf1 * c07+log(ipf1) * c08+p06 * c09+p07 * c10+p08 * c11+p09 * c12+sqrt(p02 / p04 * 4 / 3.1415926) * c14+c13)
	}

	xmdl.19<-function(p02, p03, p04, p05, p06, p07, p08, p09){
		c15 = 0.0
		c14 = 0.0
		c13 = -1.6235950
		c12 = 0.125048
		c11 = -.00036199
		c10 = 0.0354866
		c03 = -.54285E-4
		c05 = -.00803085
		c06 = -0.5702304
		c07 = 0.0
		c08 = -0.1005175
		c09 = 0.0
		c01 = 0.0
		c02 = 0.857153
		c04 = 0.152684
		ipf1 = max(0.0635,p03-p02)
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
