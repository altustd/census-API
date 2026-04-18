# U.S. Census API — Economic Distress Classifier

A portfolio analysis using the Census Bureau API to classify county-level economic distress with logistic regression.

## Viewing the Report

### Option 1 — View online (recommended)
**[https://altustd.github.io/census-API/](https://altustd.github.io/census-API/)**
Fully interactive charts, no download needed.

### Option 2 — Download the PDF
Download [`census_analysis.pdf`](census_analysis.pdf) for a print-ready static version.

### Option 3 — Render it yourself
```bash
cp .env.example .env   # add your Census API key
pixi run render        # renders HTML
pixi run render-pdf    # renders PDF
pixi run preview       # live preview in browser
```

Pixi manages the Python environment automatically — no manual installs needed.

---

## What It Does

- Pulls ACS 5-year estimates at **state** and **county** granularity via the Census API
- Visualizes key socioeconomic indicators with interactive choropleth maps
- Trains a **logistic regression classifier** to predict whether a county exceeds a 20% poverty rate
- Interprets model results via odds ratios
- Closes with a **South Carolina case study**

## Features Used

| Feature | ACS Table |
|---|---|
| Median household income | B19013 |
| Unemployment rate | B23025 |
| Bachelor's degree attainment | B15003 |
| Broadband internet access | B28002 |
| Rent-burdened households | B25070 |
| Median age | B01002 |

## API Key

A free Census API key is available at [api.census.gov/data/key_signup.html](https://api.census.gov/data/key_signup.html).
Store it in a `.env` file (see `.env.example`). The key is never committed to the repo.

## Tech Stack

`Python` · `Census API` · `pandas` · `scikit-learn` · `Plotly` · `Quarto`
