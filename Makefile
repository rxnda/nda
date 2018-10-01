FILES=files
FORMATS=docx rtf pdf odt
DOCX=$(wildcard $(FILES)/*.odt)

all: $(foreach version,$(DOCX),$(addprefix $(version:.odt=).,$(FORMATS)))

%.rtf: %.odt
	unoconv -f rtf $<

%.pdf: %.odt
	unoconv -f pdf $<

%.docx: %.odt
	unoconv -f docx $<
