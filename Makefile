.PHONY: upload download crawler

upload:
	./pre-upload
	aws s3 sync data s3://uscis-opt

download:
	aws s3 sync s3://uscis-opt data

crawler:
	(cd crawler; node .)
