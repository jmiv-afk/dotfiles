#!/bin/bash

usage() 
{
echo "Usage: $0 -i "<file1.pdf file2.pdf ...>" -o <output_filename.pdf>"
exit 1
}

if [ $# -lt 2 ]; then
  echo "Usage error: $# arguments given"
  usage
  exit 1
fi

while getopts i:o: flags
do
  case "${flags}" in
    i) infiles=${OPTARG};;
    o) outfile=${OPTARG};;
  esac
done

echo "Merging the files $infiles into $outfile"

cmdstr="gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -sOutputFile=${outfile} ${infiles}"

$cmdstr

exit 0
