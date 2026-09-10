---
title: "Guyaclim"
author: Sylvain Schmitt
date: today
date-format: medium
format: 
  gfm:
    toc: true
    toc-depth: 1
---

[![](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)

The general idea is to test the development of a clean and automated database of consolidated raw microclimate data from microsensors (TOMOST, HOBO, ...) in French Guiana.

## Usage

**guyaclim** analyses rely on the quarto documents `index.qmd` that can be run with R and associated environment defined with [renv](#0).

## Project

**guyaclim** includes:

- Analyse of the data with associated documentation and figures:
  - Reproductive analyses in ``` index``.qmd ```
  - Resulting page in `index.html`
- All raw data from the database in `data/`
- R environment definition with [renv](https://rstudio.github.io/renv/articles/renv.html) in `renv/` and `renv/lock`
- R files (`.Rbuildignore` , `.Rdata` , `.Rprofile` , `.Rhistory`)
- Git and GitHub files (`.gitignore`)
- Project documentation (`README.qmd` , `README.md` , `NEWS.md` , `LICENSE`)

## Poeple

- Sylvain Schmitt CIRAD
- Léa Françoise CNRS

## Database

The database includes (to be described):


``` r
fs::dir_tree("data", recurse = 1)
```

```
## data
## ├── Arbocel_TOMST_ALT
## │   ├── README.md
## │   ├── README.qmd
## │   └── TOMST_Arbocel_20240920
## ├── Paracou_HOBO_ALT
## │   ├── 20250418__Hobo_Paracou
## │   ├── HOBO - 20250930
## │   ├── Hobo - Paracou 20240920
## │   ├── Hobo_ExportedFiles
## │   ├── Paracou - Tomst-HOBO sensors - suivi_20240506_LF.xlsx
## │   ├── Paracou - Tomst-HOBO sensors - suivi_20250930.xlsx
## │   ├── README.md
## │   └── README.qmd
## ├── Paracou_LOLLY_ALT
## │   ├── Lolly_Paracou_20240506
## │   ├── Lolly_Paracou_20240605
## │   ├── README.md
## │   └── README.qmd
## ├── Paracou_TOMST_ALT
## │   ├── 20240920
## │   ├── 20240920.xlsx
## │   ├── 20250418
## │   ├── 20250418.xlsx
## │   ├── 20250930
## │   ├── 20250930.xlsx
## │   ├── README.md
## │   ├── README.qmd
## │   ├── campaigns.xlsx
## │   └── metadata.xlsx
## ├── README.md
## └── README.qmd
```

## 
