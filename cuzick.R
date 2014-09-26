cuzick = function(x,z,test.type=c("two.sided", "upper", "lower")) {

	N = length(z)
	n = unique(z)

	ranks=rank(x)

	T = sum(ranks*z)

	p = (table(z)/N)
	E_Z = sum(unique(z)*p)
	E_T = 0.5*N*(N+1)*E_Z

	Var_Z = sum(unique(z)^2*p) - E_Z^2
	Var_T = N^2*(N+1)/12*Var_Z

	Zscore = (T-E_T)/sqrt(Var_T)
	
	if(test.type == "two.sided") {
		pval = 2*pnorm(-abs(Zscore))
	} else if(test.type == "upper") {
		pval = pnorm(Zscore,lower.tail=F)
	} else 	pval = pnorm(Zscore,lower.tail=T)

	out = data.frame(cbind(Zscore,pval,test.type))
	colnames(out) = c("Z","p","testType")
	return(out)
}
