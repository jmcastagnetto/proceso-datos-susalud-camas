library(tidyverse)

raw <- read_csv("datos/reporte_camas.csv",
                col_types = cols(
                  .default = col_double(),
                  INSTITUCION = col_character(),
                  UBIGEO = col_character(),
                  REGION = col_character(),
                  PROVINCIA = col_character(),
                  CATEGORIA = col_character(),
                  CODIGO = col_character(),
                  NOMBRE = col_character(),
                  ZONA_COVID = col_character()
                )
        ) %>%
  janitor::clean_names()

distritos <- readRDS("datos/ubigeos-inei.rds")

susalud_camas <- raw %>%
  left_join(
    distritos %>% select(1, 4),
    by = "ubigeo"
  ) %>%
  mutate(
    fecha_corte = lubridate::ymd(fecha_corte),
    mes_corte = lubridate::month(fecha_corte,
                                 label = TRUE, abbr = FALSE,
                                 locale = "es_PE.utf8"),
    dia_semana = lubridate::wday(fecha_corte,
                                 label = TRUE, abbr = FALSE,
                                 locale = "es_PE.utf8"),
    epi_week = lubridate::epiweek(fecha_corte),
    fecha_registro = lubridate::ymd(fecha_registro)
  ) %>%
  mutate_if(
    is.character,
    factor
  ) %>%
  relocate(
    distrito,
    .after = provincia
  ) %>%
  relocate(
    mes_corte, epi_week, dia_semana,
    .after = fecha_corte
  )

write_csv(
  susalud_camas,
  path = "datos/reporte_camas_aumentado.csv"
)

write_rds(
  susalud_camas,
  path = "datos/reporte_camas_aumentado.rds"
)

