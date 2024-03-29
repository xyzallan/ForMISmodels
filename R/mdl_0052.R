#' @title single tree (stem), height 
#' @return single tree (stem), height 
#' @param p01 single tree (stem), species 
#' @param p02 single tree (stem), diameter (breast height)
#' @param p03 species level (stem), diameter (breast height)
#' @param p04 species level (stem), height 
#' @export
#' @rdname mdl_H_52
mdl_H_52 <- function(p01, p02, p03, p04){

	xmdl.1<-function(p02, p03, p04){
		c06 = -0.0015008
		c07 = 1.30841
		c08 = -0.079939
		c09 = 0.0009236
		c02 = 0.059408
		c03 = -0.0005901
		c04 = -3.29487
		c05 = 0.142404
		c01 = -1.61506
		ipf1 = p02/p03
		(1-c01-(c02+c03 * p02) * p02+(c04+(c05+c06 * p02) * p02) / (ipf1+1 / 2)+(c07+(c08+c09 * p02) * p02) / (ipf1+1 / 2)^2) * p04
	}

	xmdl.2<-function(p02, p03, p04){
		c03 = -0.0014605
		c04 = -4.89742
		c05 = 0.259258
		c06 = -0.0035748
		c07 = 2.03747
		c08 = -0.142911
		c09 = 0.0020762
		c01 = -2.3594
		c02 = 0.109322
		ipf1 = p02/p03
		(1-c01-(c02+c03 * p02) * p02+(c04+(c05+c06 * p02) * p02) / (ipf1+1 / 2)+(c07+(c08+c09 * p02) * p02) / (ipf1+1 / 2)^2) * p04
	}

	xmdl.3<-function(p02, p03, p04){
		c03 = -0.0008694
		c04 = -3.02931
		c05 = 0.159893
		c06 = -0.0021644
		c07 = 1.01665
		c08 = -0.083867
		c09 = 0.0012905
		c01 = -1.5677
		c02 = 0.069321
		ipf1 = p02/p03
		(1-c01-(c02+c03 * p02) * p02+(c04+(c05+c06 * p02) * p02) / (ipf1+1 / 2)+(c07+(c08+c09 * p02) * p02) / (ipf1+1 / 2)^2) * p04
	}

	xmdl.4<-function(p02, p03, p04){
		c02 = 0.026455
		c03 = -0.0001122
		c04 = -1.71826
		c05 = 0.055625
		c06 = -0.0002023
		c07 = 0.37793
		c08 = -0.023913
		c09 = 0.0000509
		c01 = -0.97754
		ipf1 = p02/p03
		(1-c01-(c02+c03 * p02) * p02+(c04+(c05+c06 * p02) * p02) / (ipf1+1 / 2)+(c07+(c08+c09 * p02) * p02) / (ipf1+1 / 2)^2) * p04
	}

	xmdl.5<-function(p02, p03, p04){
		c02 = 0.007542
		c03 = 0.0003034
		c04 = -1.2812
		c05 = 0.02187
		c06 = 0.0005271
		c07 = 0.12847
		c08 = -0.015836
		c09 = -0.0001081
		c01 = -0.79704
		ipf1 = p02/p03
		(1-c01-(c02+c03 * p02) * p02+(c04+(c05+c06 * p02) * p02) / (ipf1+1 / 2)+(c07+(c08+c09 * p02) * p02) / (ipf1+1 / 2)^2) * p04
	}

	xmdl.6<-function(p02, p03, p04){
		c02 = 0.03223
		c03 = 0.0003922
		c04 = -2.11866
		c05 = 0.066088
		c06 = 0.0010588
		c07 = 0.58451
		c08 = -0.026614
		c09 = -0.0007057
		c01 = -1.15266
		ipf1 = p02/p03
		(1-c01-(c02+c03 * p02) * p02+(c04+(c05+c06 * p02) * p02) / (ipf1+1 / 2)+(c07+(c08+c09 * p02) * p02) / (ipf1+1 / 2)^2) * p04
	}

	xmdl.7<-function(p02, p03, p04){
		c02 = 0.042563
		c03 = -0.000489
		c04 = -1.80468
		c05 = 0.0845810
		c06 = -0.0009408
		c07 = 0.32366
		c08 = -0.031105
		c09 = 0.0003111
		c01 = -1.05927
		ipf1 = p02/p03
		(1-c01-(c02+c03 * p02) * p02+(c04+(c05+c06 * p02) * p02) / (ipf1+1 / 2)+(c07+(c08+c09 * p02) * p02) / (ipf1+1 / 2)^2) * p04
	}

	with(data.frame( p01, p02, p03, p04 ),
		ifelse(p01 %in% c('MA'), xmdl.1(p02, p03, p04), 
		ifelse(p01 %in% c('KU'), xmdl.2(p02, p03, p04), 
		ifelse(p01 %in% c('KS'), xmdl.3(p02, p03, p04), 
		ifelse(p01 %in% c('HB'), xmdl.4(p02, p03, p04), 
		ifelse(p01 %in% c('LM'), xmdl.5(p02, p03, p04), 
		ifelse(p01 %in% c('LV'), xmdl.6(p02, p03, p04), 
		ifelse(p01 %in% c('TA'), xmdl.7(p02, p03, p04), 
		ifelse(p01 %in% c('SA'), xmdl.8(p02, p03, p04), 
		NA
	)))))))))
}
