library(readxl)
library(gt)
y <- read_xlsx("NBA_3.xlsx", sheet = "players")
as.numeric(y$...2)
NBAdata <- gt(y, rowname_col = "Player Name")
NBAdata <- NBAdata |>
  cols_label(...2 = "Minutes Played", ...3 = "Points",...4 = "3 Point %",...5 = "2 Point %",...6 = "Free Throw %",...7 = "FG %", ...8=  "Assist",...9 = "RBs",...10 = "Steals",...11 = "Blocks")
NBAdata
#-----------------------------------------------------------
library(stringr)
NBAdata <- NBAdata |>
  tab_header(
    title = "NBA Player Stats",   
    subtitle = "Current stats"
)|>  
  tab_footnote(
    footnote = "The Offical NBA - © 2023 NBA Media Ventures, LLC. All rights reserved.",
  )
NBAdata

