#!/bin/sh
quote=$(shuf -n 1 quotes.txt)
echo "$quote" > quote.txt
