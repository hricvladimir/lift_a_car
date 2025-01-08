#!/bin/bash

# Kompilácia programu
gcc -o program main.c -lm
if [ $? -ne 0 ]; then
    echo "Kompilácia zlyhala."
    exit 1
fi

# Testovacia funkcia
run_test() {
    local stick_length=$1
    local human_weight=$2
    local car_weight=$3
    local expected_output=$4

    # Spusti program s argumentmi
    output=$(./program "$stick_length" "$human_weight" "$car_weight")

    # Porovnanie výstupu
    if [ "$output" == "$expected_output" ]; then
        echo "Test PASSED: $stick_length, $human_weight, $car_weight => $expected_output"
    else
        echo "Test FAILED: $stick_length, $human_weight, $car_weight => Očakávané: $expected_output, Dostali sme: $output"
        exit 1
    fi
}

# Testy
run_test 2 80 1400 "0.1100"   # Základný test
run_test 4 90 1650 "0.2100"   # Dlhšia tyč, väčšie auto
run_test 3 70 1200 "0.1700"   # Priemerne veľké auto
run_test 5 100 2000 "0.2400"  # Silnejšia osoba, veľké auto
run_test 1 60 800 "0.0700"    # Krátka tyč, malé auto
run_test 6 150 3000 "0.2900"  # Veľmi dlhá tyč, extrémne veľké auto
run_test 2 70 70 "1.0000"     # Rovnaká váha človeka a auta

