# Tâche 1
unzip(zipfile = "data.zip")
# Importer les données
df_1 <- read.csv("data_1.csv")
df_2 <- read.csv("data_2.csv")
df_3 <- read.csv("data_3.csv")
df_4 <- read.csv("data_4.csv")
# Optionnel, pour voir le contenu des fichiers
View(df_1)
View(df_2)
View(df_3)
View(df_4)
#Combiner les données (il doit y avoir exactement le même nombre de colonnes et les mêmes données dans les mêmes colonnes)
df <- rbind(df_1, df_2, df_3, df_4)

# ou

file_list <- list.files(path = ".", pattern = "csv")
df <- lapply(file_list, read.csv)
