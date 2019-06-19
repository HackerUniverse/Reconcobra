#!/bin/bash
wget -i metacrawler_googlefiles.txt
mkdir downloaded_pdf_files
mkdir metacrawler_results
cd exiftool
./exiftool *.pdf > ./metacrawler_results/pdfmetacrawler_results.txt
./exiftool *.svg > ./metacrawler_results/svgmetacrawler_results.txt
./exiftool *.doc > ./metacrawler_results/docmetacrawler_results.txt
./exiftool *.xls > ./metacrawler_results/xlsmetacrawler_results.txt
./exiftool *.xlsx > ./metacrawler_results/xslxmetacrawler_results.txt
./exiftool *.ppt > ./metacrawler_results/pptmetacrawler_results.txt
./exiftool *.pptx > ./metacrawler_results/pptxmetacrawler_results.txt
./exiftool *.csv > ./metacrawler_results/csvmetacrawler_results.txt
./exiftool *.rtf > ./metacrawler_results/rtfmetacrawler_results.txt
./exiftool *.zip > ./metacrawler_results/zipmetacrawler_results.txt
./exiftool *.rtf > ./metacrawler_results/rtfmetacrawler_results.txt
./exiftool *rar > ./metacrawler_results/rarmetacrawler_results.txt
./exiftool *.tgz > ./metacrawler_results/tgzmetacrawler_results.txt
./exiftool *.gz > ./metacrawler_results/gzmetacrawler_results.txt
./exiftool *.xz > ./metacrawler_results/xzmetacrawler_results.txt
cp *.pdf ./downloaded_pdf_files/
cp *.svg ./downloaded_pdf_files/
cp *.doc ./downloaded_pdf_files/
cp *.xls ./downloaded_pdf_files/
cp *.xlsx ./downloaded_pdf_files/
cp *.ppt ./downloaded_pdf_files/
cp *.pptx ./downloaded_pdf_files/
cp *.csv ./downloaded_pdf_files/
cp *.rtf ./downloaded_pdf_files/
cp *.tgz ./downloaded_pdf_files/
cp *.gz ./downloaded_pdf_files/
cp *.xz ./downloaded_pdf_files/
rm *.pdf
rm *.svg
rm *.doc
rm *.xls
rm *.xlsx
rm *.ppt 
rm *.pptx
rm *.csv 
rm *.rtf 
rm *.tgz
rm *.gz
rm *.xz
cd ..
