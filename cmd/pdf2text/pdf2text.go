/*
 * PDF to text: Extract all text for each page of a pdf file.
 *
 * Run as: go run pdf_extract_text.go input.pdf
 */

package main

import (
	"fmt"
	"os"

	common "github.com/lxt1045/PdfTextExtract/common"
	"github.com/lxt1045/PdfTextExtract/extractor"
	// "github.com/otiai10/gosseract"
	//"runtime"
)

func main() {
	common.SetLogger(common.NewConsoleLogger(common.LogLevelDebug))

	// inputPath := os.Args[1]
	// inputPath := "D:/book/极客时间/CICD/DevOps实战笔记.pdf"
	inputPath := "D:/book/天涯/kk预测.pdf"
	outputPath := "D:/book/天涯/kk预测2.txt"

	text, err := extractor.ExtractPdfFile(inputPath)
	if err != nil {
		fmt.Printf("Error: %s\n", err)
		os.Exit(1)
	}

	fmt.Println(string(text))

	os.WriteFile(outputPath, text, 055)
}
