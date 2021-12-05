output/report.html: Rmd/report.Rmd data/mw2012_preg_20210915.sas7bdat
	Rscript -e "rmarkdown::render('Rmd/report.Rmd')"
	mv Rmd/report.html output/report.html
.PHONY: report
