---
title: "Paracou HOBO from ALT"
author: Sylvain Schmitt -
date: today
date-format: medium
format: 
  gfm:
    toc: true
    toc-depth: 2
---

ALT data from HOBO sensors in Paracou (listed data below). Available campaigns are :

- 20230330 - missing
- 20230525 - missing
- 20231016 - missing
- 20240506 - missing
- 20250624 - missing
- 20240930 - ok
- 20250418 - ok
- 20250920 - ok
- ?

Some metadata are lacking.


``` r
fs::dir_tree()
```

```
.
├── 20250418__Hobo_Paracou
│   ├── 1 2025-04-18 10_29_05 AST (Data French Guiana Standard Time).xlsx
│   ├── 12 2025-04-18 11_05_14 AST (Data French Guiana Standard Time).xlsx
│   ├── 13 2025-04-18 11_08_44 AST (Data French Guiana Standard Time).xlsx
│   ├── 14 2025-04-18 11_12_46 AST (Data French Guiana Standard Time).xlsx
│   ├── 15 2025-04-18 11_15_25 AST (Data French Guiana Standard Time).xlsx
│   ├── 27 2025-04-18 09_54_35 AST (Data French Guiana Standard Time).xlsx
│   ├── 4 2025-04-18 10_44_47 AST (Data French Guiana Standard Time).xlsx
│   ├── 5 2025-04-18 10_47_50 AST (Data French Guiana Standard Time) (1).xlsx
│   ├── 5 2025-04-18 10_47_50 AST (Data French Guiana Standard Time).xlsx
│   └── 8 2025-04-18 10_52_15 AST (Data French Guiana Standard Time).xlsx
├── HOBO - 20250930
│   ├── 10 2025-09-30 10_49_21 GFT (Data GFT).xlsx
│   ├── 12 2025-09-30 11_06_06 GFT (Data GFT).xlsx
│   ├── 15 2025-09-30 11_22_23 GFT (Data GFT).xlsx
│   ├── 16 2025-09-30 11_27_37 GFT (Data GFT).xlsx
│   ├── 18 2025-09-30 11_35_44 GFT (Data GFT).xlsx
│   ├── 19 2025-09-30 11_42_25 GFT (Data GFT).xlsx
│   ├── 2 2025-09-30 10_07_22 GFT (Data GFT).xlsx
│   ├── 29 2025-09-30 09_30_36 GFT (Data GFT).xlsx
│   ├── 4 2025-09-30 10_17_44 GFT (Data GFT).xlsx
│   ├── 5 2025-09-30 10_24_49 GFT (Data GFT).xlsx
│   └── 8 2025-09-30 10_39_01 GFT (Data GFT).xlsx
├── Hobo - Paracou 20240920
│   ├── 10 2024-09-20 10_36_25 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   ├── 11 2024-09-20 10_30_45 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   ├── 12 2024-09-20 10_19_10 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   ├── 13 2024-09-20 10_15_11 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   ├── 14 2024-09-20 10_10_11 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   ├── 15 2024-09-20 09_44_22 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   ├── 16 2024-09-20 09_54_26 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   ├── 17 2024-09-20 09_36_24 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   ├── 18 2024-09-20 09_33_26 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   ├── 19 2024-09-20 09_26_16 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   ├── 20 2024-09-20 09_12_08 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   ├── 25 2024-09-20 09_02_06 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   ├── 26 2024-09-20 07_56_23 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   ├── 27 2024-09-20 08_07_01 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   ├── 28 2024-09-20 08_12_23 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   ├── 29 2024-09-20 08_17_21 French Guiana Standard Time (Data French Guiana Standard Time).xlsx
│   └── 30 2024-09-20 08_31_30 French Guiana Standard Time (Data AST).xlsx
├── Hobo_ExportedFiles
│   ├── 1 2024-05-06 10_13_42 AST (Data French Guiana Standard Time).xlsx
│   ├── 10 2024-05-06 11_12_18 AST (Data French Guiana Standard Time).xlsx
│   ├── 11 2024-05-06 11_14_24 AST (Data French Guiana Standard Time).xlsx
│   ├── 12 2024-05-06 11_16_26 AST (Data French Guiana Standard Time).xlsx
│   ├── 13 2024-05-06 11_18_23 AST (Data French Guiana Standard Time).xlsx
│   ├── 14 2024-05-06 11_20_42 AST (Data French Guiana Standard Time).xlsx
│   ├── 15 2024-05-06 11_23_15 AST (Data French Guiana Standard Time).xlsx
│   ├── 16 2024-05-06 11_25_31 AST (Data French Guiana Standard Time).xlsx
│   ├── 16 2024-05-06 11_27_41 AST (Data French Guiana Standard Time).xlsx
│   ├── 17 2024-05-06 11_29_20 AST (Data French Guiana Standard Time).xlsx
│   ├── 18 2024-05-06 11_31_19 AST (Data French Guiana Standard Time).xlsx
│   ├── 19 2024-05-06 11_33_16 AST (Data French Guiana Standard Time).xlsx
│   ├── 20 2024-05-06 11_34_48 AST (Data French Guiana Standard Time).xlsx
│   ├── 21 2024-05-06 12_07_36 AST (Data French Guiana Standard Time).xlsx
│   ├── 23 2024-05-06 11_44_52 AST (Data French Guiana Standard Time).xlsx
│   ├── 24 2024-05-06 11_41_10 AST (Data French Guiana Standard Time).xlsx
│   ├── 27 2024-05-06 09_52_44 AST (Data French Guiana Standard Time).xlsx
│   ├── 28 2024-05-06 09_55_46 AST (Data French Guiana Standard Time).xlsx
│   ├── 29 2024-05-06 09_57_34 AST (Data French Guiana Standard Time).xlsx
│   ├── 3 2024-05-06 10_45_56 AST (Data French Guiana Standard Time).xlsx
│   ├── 30 2024-05-06 10_01_14 AST (Data AST).xlsx
│   ├── 4 2024-05-06 10_47_32 AST (Data French Guiana Standard Time).xlsx
│   ├── 5 2024-05-06 10_49_18 AST (Data French Guiana Standard Time).xlsx
│   ├── 6 2024-05-06 10_51_01 AST (Data French Guiana Standard Time).xlsx
│   ├── 8 2024-05-06 11_04_23 AST (Data French Guiana Standard Time).xlsx
│   └── 9 2024-05-06 11_06_15 AST (Data French Guiana Standard Time).xlsx
├── Paracou - Tomst-HOBO sensors - suivi_20240506_LF.xlsx
├── Paracou - Tomst-HOBO sensors - suivi_20250930.xlsx
├── README.md
└── README.qmd
```
