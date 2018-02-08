Detest files without test_ counterpart
```bash
cd /some/R/package
grep "@rdname" R/*.R | awk -F":" '{cmd="if [ ! -f tests/testthat/test_"$1" ]; then echo \""$1"\"; fi"; system(cmd)}'
```

Create test_ files
```bash
grep "@rdname" R/*.R | awk -F":" '{cmd="touch tests/testthat/test_"$1; system(cmd)}' 
```



