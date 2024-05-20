module github.com/raykov/mdtopdf

go 1.22.2

require (
	code.sajari.com/docconv/v2 v2.0.0-pre.4
	github.com/jung-kurt/gofpdf v1.16.2
	github.com/signintech/gopdf v0.25.0
	github.com/yuin/goldmark v1.3.5
)

require (
	github.com/lxt1045/PdfTextExtract v0.0.0-20210820075941-692e68af32ce // indirect
	github.com/phpdave11/gofpdi v1.0.14-0.20211212211723-1f10f9844311 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/unidoc/unidoc v2.2.0+incompatible // indirect
	golang.org/x/image v0.16.0 // indirect
)

// replace github.com/jung-kurt/gofpdf v1.16.2 => github.com/lxt1045/gofpdf v1.16.2

replace github.com/jung-kurt/gofpdf v1.16.2 => ../gofpdf

replace github.com/lxt1045/PdfTextExtract => ../PdfTextExtract
