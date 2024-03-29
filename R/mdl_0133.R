#' @title stand (stem), distance between 
#' @return stand (stem), distance between 
#' @param p01 stand (stem), species 
#' @param p02 stand (stem), diameter (breast height)
#' @param p03 stand (stem), height (100 years old)
#' @export
#' @rdname mdl_L_133
mdl_L_133 <- function(p01, p02, p03){

	xmdl.1<-function(p02, p03){
		c02 = 122.8
		c03 = 0.0
		c01 = 12.6
		c01 * p02+c02+c03 * p03
	}

	xmdl.2<-function(p02, p03){
		c02 = 216.2
		c03 = -2.1
		c01 = 10.06
		c01 * p02+c02+c03 * p03
	}

	xmdl.3<-function(p02, p03){
		c02 = 128.4
		c03 = 0.0
		c01 = 12.35
		c01 * p02+c02+c03 * p03
	}

	with(data.frame( p01, p02, p03 ),
		ifelse(p01 %in% c('MA'), xmdl.1(p02, p03), 
		ifelse(p01 %in% c('KU'), xmdl.2(p02, p03), 
		ifelse(p01 %in% c('KS'), xmdl.3(p02, p03), 
		NA
	))))
}
