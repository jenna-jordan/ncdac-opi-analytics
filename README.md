# NC DAC Offender Public Information Analytics

This dbt project models data from the North Carolina Department of Adult Correction.

The data is ingested using the [ncdac-opi-parser tool](https://github.com/saschabratton/ncdac-opi-parser/).

This is part of a collaborative effort by Code With Asheville to support Pisgah Legal Services and Legal Aid NC on tooling to support record expungement.

## Installation

The development environment is managed with [mise](https://mise.jdx.dev/). Make sure to first [install mise](https://mise.jdx.dev/installing-mise.html).

Set up the development environment with:

```
mise install
mise run test:dbt
mise run dbt debug
```
