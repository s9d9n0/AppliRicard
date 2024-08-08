
## Chargement des packages utilises dans le programme ----
library(lubridate)
library(dplyr)
library(tidyr)
library(stringr)
library(forcats)
library(ggplot2)


# determination journee de reference
date_jour <- Sys.time()

#date retardee de 12h
date_jour_12hmoins <- date_jour - dhours(12)

# recuperation de la partie date date_jour_12hmoins
annee_date_jour <- paste0(year(date_jour_12hmoins))
mois_date_jour <- ifelse(str_length(month(date_jour_12hmoins))==1,
                         paste0("0",month(date_jour_12hmoins)),
                         paste0(month(date_jour_12hmoins)))
jour_date_jour <- ifelse(str_length(day(date_jour_12hmoins))==1,
                         paste0("0",day(date_jour_12hmoins)),
                         paste0(day(date_jour_12hmoins)))

date_ref <- paste0(annee_date_jour,"-",mois_date_jour,"-",jour_date_jour)

# date_ref <- as.POSIXct(paste0(annee_date_jour,"-",mois_date_jour,"-",jour_date_jour," 00:00:00")) - dhours(decalage_heure)
rm(annee_date_jour,mois_date_jour,jour_date_jour)


chemin <- "C:/Users/SIAR_ycg8l6/Docs/ProgrammesR/CompteurAlertes_5min/Graph_Chronogrammes_Detailles/"
cheminRicard <- "C:/Users/SIAR_ycg8l6/Docs/ProgrammesR/CompteurAlertes_PackRicard/"
cheminRicard2 <- "C:/inetpub/wwwroot/peps-si/ChronogrammeZoneSI/"

#######################################################################################
#######################################################################################

#### ... vers cheminRicard...

## date du jour...
file.remove(paste0(cheminRicard,"assets/","date_json.json"))
file.copy(paste0(chemin,"date_json.json"), paste0(cheminRicard,"assets/","date_json.json"))

## DMZ
file.remove(paste0(cheminRicard,"assets/","graph_DMZ_Auze.png"))
file.copy(paste0(chemin,"graph_DMZ_Auze.png"), paste0(cheminRicard,"assets/","graph_DMZ_Auze.png"))
file.remove(paste0(cheminRicard,"assets/","graph_DMZ_Osny.png"))
file.copy(paste0(chemin,"graph_DMZ_Osny.png"), paste0(cheminRicard,"assets/","graph_DMZ_Osny.png"))

## INT
file.remove(paste0(cheminRicard,"assets/","graph_INT_Auze.png"))
file.copy(paste0(chemin,"graph_INT_Auze.png"), paste0(cheminRicard,"assets/","graph_INT_Auze.png"))
file.remove(paste0(cheminRicard,"assets/","graph_INT_Osny.png"))
file.copy(paste0(chemin,"graph_INT_Osny.png"), paste0(cheminRicard,"assets/","graph_INT_Osny.png"))

## SIA
file.remove(paste0(cheminRicard,"assets/","graph_SIA_Auze.png"))
file.copy(paste0(chemin,"graph_SIA_Auze.png"), paste0(cheminRicard,"assets/","graph_SIA_Auze.png"))
file.remove(paste0(cheminRicard,"assets/","graph_SIA_Osny.png"))
file.copy(paste0(chemin,"graph_SIA_Osny.png"), paste0(cheminRicard,"assets/","graph_SIA_Osny.png"))


#######################################################################################
#######################################################################################

#### ... vers cheminRicard2...

## date du jour...
file.remove(paste0(cheminRicard2,"assets/","date_json.json"))
file.copy(paste0(chemin,"date_json.json"), paste0(cheminRicard2,"assets/","date_json.json"))

## DMZ
file.remove(paste0(cheminRicard2,"assets/","graph_DMZ_Auze.png"))
file.copy(paste0(chemin,"graph_DMZ_Auze.png"), paste0(cheminRicard2,"assets/","graph_DMZ_Auze.png"))
file.remove(paste0(cheminRicard2,"assets/","graph_DMZ_Osny.png"))
file.copy(paste0(chemin,"graph_DMZ_Osny.png"), paste0(cheminRicard2,"assets/","graph_DMZ_Osny.png"))

## INT
file.remove(paste0(cheminRicard2,"assets/","graph_INT_Auze.png"))
file.copy(paste0(chemin,"graph_INT_Auze.png"), paste0(cheminRicard2,"assets/","graph_INT_Auze.png"))
file.remove(paste0(cheminRicard2,"assets/","graph_INT_Osny.png"))
file.copy(paste0(chemin,"graph_INT_Osny.png"), paste0(cheminRicard2,"assets/","graph_INT_Osny.png"))

## SIA
file.remove(paste0(cheminRicard2,"assets/","graph_SIA_Auze.png"))
file.copy(paste0(chemin,"graph_SIA_Auze.png"), paste0(cheminRicard2,"assets/","graph_SIA_Auze.png"))
file.remove(paste0(cheminRicard2,"assets/","graph_SIA_Osny.png"))
file.copy(paste0(chemin,"graph_SIA_Osny.png"), paste0(cheminRicard2,"assets/","graph_SIA_Osny.png"))


#######################################################################################
#######################################################################################

setwd(cheminRicard)

date_ref_short <- str_replace_all(date_ref,"-","")
date_ref_short <-  str_replace_all(date_ref_short,"20","")
password <- paste0("C3ntr30n_",date_ref_short)

file.remove("ChronogrammesZones.zip")

zip(zipfile="ChronogrammesZones.zip","assets/date_json.json")
zip(zipfile="ChronogrammesZones.zip","assets/favicon-moon.png")

zip(zipfile="ChronogrammesZones.zip","assets/bouteilleEdition2024-transparent.png")
zip(zipfile="ChronogrammesZones.zip","assets/bouteilleFruiteCitron-transparent.png")
zip(zipfile="ChronogrammesZones.zip","assets/brocCeramique-transparent.png")
zip(zipfile="ChronogrammesZones.zip","assets/brocPlastique-transparent.png")
zip(zipfile="ChronogrammesZones.zip","assets/verreAllonge-transparent.png")
zip(zipfile="ChronogrammesZones.zip","assets/verreBallon-transparent.png")

zip(zipfile="ChronogrammesZones.zip","assets/graph_DMZ_Osny.png")
zip(zipfile="ChronogrammesZones.zip","assets/graph_DMZ_Auze.png")
zip(zipfile="ChronogrammesZones.zip","assets/graph_INT_Osny.png")
zip(zipfile="ChronogrammesZones.zip","assets/graph_INT_Auze.png")
zip(zipfile="ChronogrammesZones.zip","assets/graph_SIA_Osny.png")
zip(zipfile="ChronogrammesZones.zip","assets/graph_SIA_Auze.png")

zip(zipfile="ChronogrammesZones.zip","index.html", flags = paste("--password", password))









