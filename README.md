## Proposal for IP block development for the Efabless 2024 Chipalooza challenge

### IP Block name:

# Current bias

### Designer/Design Team:

*Christoph Maier*

Email address: [*christoph.maier@ieee.org*](mailto:christoph.maier@ieee.org)

01 March 2024

## Circuit description

In its simplest form, the bias generator will just be matched current sources/sinks.  
To get good matching and good 1/f noise performance, 
the matched transistors will be long and narrow.

## Circuit pinout

*Note any changes from the specification, such as if trim bits have been
added.*

##Circuit architecture

Basically, matched current mirrors with dummy structures for matching.

### External resources (if any) (all resources must be open source)

*List any resources that come from on chip, such as a bandgap-referenced
voltage or PTAT current, or from other IP blocks (such as a comparator
used in an ADC). List any external resources needed for testbench
circuits, including any digital control sequencing needed.*

### Specification difficulties

*List all specifications which may be difficult to attain, and what
circuit design methods will be used to meet those specifications. Note
where specifications will be affected by layout considerations, such as
mismatch, crosstalk, and I-R drop.*  
  
This building block is essentially an exercise in matched layout.  
  
There may be a tradeoff between compliance voltage and output impedance 
— to cascode or not to cascode, that is the question.

### Testbenches required for verifying circuit performance

*List what testbenches are used for each of the electrical parameters to
be tested, and briefly describe the testbench circuit setup and how it
measures the specified parameter.*

### Connections required for standalone (breakout) implementation

*Indicate how the circuit is to be connected for individual testing
outside of the eventual SoC application, and where test points may need
to be added to access internal states of the circuit. Note where pad
capacitance, wirebond inductance, and wire resistance from pad to
circuit may affect measurement, and how to mitigate. Note where the
circuit may need to be placed as close as possible to a pad.*

### Test plan for standalone (breakout) implementation

*Describe how the standalone circuit can be measured on a lab bench to
verify that the circuit meets performance requirements for each
specified electrical parameter.*
