#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l
filerplspl=$(ls rplspl-slurm*.out)
filerplpl=$(ls rplpl-slurm*.out)
echo ""
echo "#==========================================================="
echo "Start Times"
echo "==> $filerplpl <=="
head -n 1 rplpl-slurm*.out
echo ""
echo "==> $filerplspl <=="
head -n 1 rplspl-slurm*.out

echo "End Times"
echo "==> $filerplpl <=="
tail -n 5 rplpl-slurm*.out
echo ""
echo "==> $filerplspl <=="
tail -n 5 rplspl-slurm*.out
echo "#==========================================================="
