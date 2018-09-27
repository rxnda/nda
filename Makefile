FORMATS=docx rtf pdf odt
DOCX=$(wildcard *.docx)

all: $(foreach version,$(DOCX),$(addprefix $(version:.docx=).,$(FORMATS)))

%.rtf: %.docx
	unoconv -f rtf $<

%.pdf: %.docx
	unoconv -f pdf $<

%.odt: %.docx
	unoconv -f odt $<
