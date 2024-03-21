### IP Block name:

# Current bias

### Designer/Design Team:

*Christoph Maier*

Email address: [*christoph.maier@ieee.org*](mailto:christoph.maier@ieee.org)

21 March 2024

## Specifications

| Parameter                    | min | typ | max | unit        | Notes                         |
|:-----------------------------|----:|----:|----:|:-----------:|:------------------------------|
| Operating Voltage            | 3   | 3.3 | 5.5 | V           |                               |
| Operating Temperature        | -40 | 25  | 85  | &deg;C      |                               |
| Output current range         | 0.2 |     | 1   | &micro;A    |                               |
| Power consumption (enabled)  |     | 10  | 20  | &micro;A    | Measured at 3.3V and 25 &deg;C|
| Power consumption (disabled) |     | 10  | 20  | nA          |                               |
| Output current accuracy      | -2  | 0   | 2   | %           |                               |
| Temperature coefficient      | 50  | 100 | 200 | ppm/&deg;C  |                               |
| PSRR                         | 50  | 60  | 70  | dB          | at 1 kHz                      |
| Output noise                 | 0.1 | 0.5 | 1   | nA/&sqrt;Hz | 0.1 … 10 Hz                   |
| Start-up time                | 10  | 20  | 40  | &micro;s    |                               |
| Output impedance             | 0.5 | 1   | 2   | k&Omega;    |                               |
| Matching between sources     | -1  | 0   | 1   | %           | between branches              |

Note:  Specific current outputs are indicated below.  
Output bias layout should be modular so that the output array can be extended/contracted as needed.
Outputs will be sourced from the power supply.  
Receiving circuits will sink the current to ground.  

## Circuit pinout

| Pin name  | Use                        | Value                                |
|:---------:|:--------------------------:|-------------------------------------:|
| avdd      | analog power               | 3.3&hellip;5.5V                      |
| dvdd      | digital power              | 1.8V typ.                            |
| avss      | analog ground              | 0V                                   |
| dvss      | digital ground             | 0V                                   |
| ena[15:0] | current branch enable      | [dvss&hellip;dvdd]                   |
| vbg       | bandgap voltage            | ???                                  |
| iref[15:0]| reference output current   | Variable 50, 100, 200, 400, 600nA ???|
| *poweron* | *digital, master power on* | *[dvss&hellip;dvdd]*                 |

*Note any changes from the specification, such as if trim bits have been
added.*

