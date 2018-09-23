FORMATS=docx rtf pdf
DOCX=$(wildcard *.docx)

all: $(foreach version,$(DOCX),$(addprefix $(version:.docx=).,$(FORMATS)))

%.rtf: %.docx
	unoconv -f rtf $<

%.pdf: %.docx
	unoconv -f pdf $<
