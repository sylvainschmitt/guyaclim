---
title: "Guyaclim raw data"
author: Sylvain Schmitt -
date: today
date-format: medium
format: 
  gfm:
    toc: true
    toc-depth: 2
---

All the raw data from Guyaclim organized first by site and then by project and sensors (listed data below). Available raw data are (with details and sensors given below) :

- Paracou : description with link. Paracou raw data includes:
  - HOBO from ALT
  - LOLLY from ALT
  - TOMST from ALT
- Arbocel : description with link.
  - TOMST from ALT

Available projects are :

- ALT : description with link.

Available sensors are :

- TOMST : description with link.


``` r
fs::dir_tree(recurse = 1)
```

```
.
├── Arbocel_TOMST_ALT
│   ├── README.md
│   ├── README.qmd
│   └── TOMST_Arbocel_20240920
├── Paracou_HOBO_ALT
│   ├── 20250418__Hobo_Paracou
│   ├── HOBO - 20250930
│   ├── Hobo - Paracou 20240920
│   ├── Hobo_ExportedFiles
│   ├── Paracou - Tomst-HOBO sensors - suivi_20240506_LF.xlsx
│   ├── Paracou - Tomst-HOBO sensors - suivi_20250930.xlsx
│   ├── README.md
│   └── README.qmd
├── Paracou_LOLLY_ALT
│   ├── Lolly_Paracou_20240506
│   ├── Lolly_Paracou_20240605
│   ├── README.md
│   └── README.qmd
├── Paracou_TOMST_ALT
│   ├── 20240920
│   ├── 20240920.xlsx
│   ├── 20250418
│   ├── 20250418.xlsx
│   ├── 20250930
│   ├── 20250930.xlsx
│   ├── README.md
│   ├── README.qmd
│   ├── campaigns.xlsx
│   └── metadata.xlsx
├── README.md
└── README.qmd
```
