# Honeycomb configuration for the X-Plane LES Saab 340B

## Prerequisites

1. [https://github.com/X-Friese/FlyWithLua](https://github.com/X-Friese/FlyWithLua)
1. [Honeycomb configurator](https://forum.aerosoft.com/index.php?/files/category/126-honeycomb-profiles/)
1. [LES Saab 340A](https://www.x-aviation.com/catalog/product_info.php/take-command-saab-340a-p-100)

## Installation

1. Copy the `bravo-configurator-LES-SF34.json` profile to
    `X-Plane 11\Resources\plugins\AFC_Bridge\honeycomb_profiles`.
1. Copy the `honeycomb-bravo-LES-SF34.lua` script to
    `X-Plane 11\Resources\plugins\FlyWithLua\Scripts`.
1. Copy the `LES 340 - Joysticks.prf` X-plane profile to
    `X-Plane 11\Output\preferences\control profiles`.

## Usage

1. Start the *Honeycomb Configurator*
    1. Select Profiles -> LES Saab 340A
    1. Select Load
    1. Select Actions -> Activate Current Profile

1. Start X-Plane
    1. Load the aircraft.
    1. Connect the GPU, connect external power, power up L, R, and ESS busses.
    1. Select Plugins -> Honeycomb -> BFC_Throttle -> Reload bindings
    1. Ensure correct profile name is displayed as loaded. It should be obvious
    as the LEDs light up and the annunciator panel shows multiple issues.

I took the liberty with the master caution annunciator light, wiring up the AIRCON and EMER_LTS errors to the single LED. At least it's clean in take-off config.


## Assignments

### Alpha yoke

```
OFF - INOP
R - INOP
L - INOP
BOTH - INOP
START - INOP

ALT - INOP
BAT - INOP
BUS 1 - INOP
BUS 2 - INOP
BCN - Beacon
LAND - Landing lights L and R
TAXI - Taxi
NAV - Nav
STROBE - Strobe

Left flap - INOP
Right flap - INOP
AP Off - AP Off
```

### Bravo throttle

```
1. Toggle MCP NAV L/R - X-Plane 11 profile
1. Toggle CRS 1/2 - FlyWithLua
1. INOP
1. INOP
1. INOP
1. INOP
1. INOP

ALT - INOP
VS - VS
HDG - HDG
CRS - CRS1 / CRS2
IAS - INOP
```

## Feedback

Salty feedback welcome via Github issues or find me via other channels.