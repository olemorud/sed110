
## Examples

### One iteration

```sh
./rule110.sed <<<0001
```
output:
```
00011
```

### Many iterations

There's a useful helper script to run several iterations of the script, which
uses '#' for 1 and ' ' for 0.

```sh
./run.sh 00000000001
```
output:
```
         #
        ##
       ###
      ## #
     #####
    ##   #
   ###  ##
  ## # ###
 ####### #
 #     ###
 #    ## #
```

