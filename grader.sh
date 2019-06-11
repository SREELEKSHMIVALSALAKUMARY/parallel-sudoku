#!/bin/zsh

TEST_DIR="tests"

RED='\033[1;31m'
GREEN='\033[1;32m'
NC='\033[0m'

for TEST in $(find "./$TEST_DIR/" -type f -name "*.txt") 
do 
    name=$(cut -d/ -f4 <<< $TEST | cut -d. -f1)

    # run test
    start=$(date +%s%3N)
    java Sudoku "$TEST" &>> log.out
    end=$(date +%s%3N)

    # print result
    elapsed=$((end - start))
    n=$((elapsed%1000))
    s=$((elapsed/1000))
    m=$((s/60))
    echo $name ${GREEN}✓${NC} ${RED}$m"m" $((s%60))"s" $n"ms"${NC} 
done