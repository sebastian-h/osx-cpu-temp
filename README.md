# OSX CPU Temp

Outputs current CPU temperature for OSX.

## Usage 

### Compiling

```bash
make
```

### Running

```bash
./osx-cpu-temp
```

or

```bash
sudo make install # installs to /usr/local/bin
osx-cpu-temp
```

### Using clib

```bash
clib install lavoiesl/osx-cpu-temp
```

### Output example

```
61.8 °C
```

### Options

 * `-C` Output temperature in Celsius (default).
 * `-F` Output temperature in Fahrenheit.
 * `-f` Output fan speed.
 * `-g` Output gpu temp.
 * `-c` Display CPU temperature (Default).
 * `-h` Display this help.
 
 If more than one of -c, -f, or -g are specified, titles will be added

## Maintainer 

Sébastien Lavoie <github@lavoie.sl>

### Source 

Apple System Management Control (SMC) Tool 
Copyright (C) 2006

### Inspiration 

 * https://www.eidac.de/smcfancontrol/
 * https://github.com/hholtmann/smcFanControl/tree/master/smc-command
