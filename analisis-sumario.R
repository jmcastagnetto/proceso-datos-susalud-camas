library(tidyverse)

susalud_camas <- readRDS("datos/reporte_camas_aumentado.rds")

covid_fecha <- susalud_camas %>%
  group_by(fecha_corte, zona_covid) %>%
  summarise(
    zc_tot = sum(camas_zc_total),
    zc_ocu = sum(camas_zc_ocupados),
    znc_tot = sum(camas_znc_total),
    znc_ocu = sum(camas_znc_ocupados),
    hosp_tot = sum(camas_hosp_total),
    hosp_ocu = sum(camas_hosp_ocupadas),
    uci_adult_tot = sum(uci_adultos_camas_total),
    uci_adult_ocu = sum(uci_adultos_camas_ocupadas),
    uci_pedia_tot = sum(uci_pediatria_camas_total),
    uci_pedia_ocu = sum(uci_pediatria_camas_ocupadas),
    uci_neo_tot = sum(ucin_camas_total),
    uci_neo_ocu = sum(ucin_camas_ocupadas),
    vent_zc_tot = sum(ventiladores_uci_zc_total),
    vent_zc_ocu = sum(ventiladores_uci_zc_ocupados),
    vent_adult_tot = sum(ventiladores_uci_adulto_total),
    vent_adult_ocu = sum(ventiladores_uci_adulto_ocupados),
    vent_pedia_tot = sum(ventiladores_uci_pediatria_total),
    vent_pedia_ocu = sum(ventiladores_uci_adulto_ocupados),
    vent_neo_tot = sum(ventiladores_ucin_total),
    vent_neo_ocu = sum(ventiladores_uci_pediatria_ocupados)
  )


covid_fecha_pctocup <- susalud_camas %>%
  group_by(fecha_corte, zona_covid) %>%
  summarise(
    pct_zn_ocu = sum(camas_zc_ocupados)/sum(camas_zc_total),
    pct_znc_ocu = sum(camas_znc_ocupados) / sum(camas_znc_total),
    pct_hosp_ocu = sum(camas_hosp_ocupadas) / sum(camas_hosp_total),
    pct_uci_adult_ocu = sum(uci_adultos_camas_ocupadas) / sum(uci_adultos_camas_total),
    pct_uci_pedia_ocu = sum(uci_pediatria_camas_ocupadas) / sum(uci_pediatria_camas_total),
    pct_uci_neo_ocu = sum(ucin_camas_ocupadas) / sum(ucin_camas_total),
    pct_vent_zc_ocu = sum(ventiladores_uci_zc_ocupados) / sum(ventiladores_uci_zc_total),
    pct_vent_adult_ocu = sum(ventiladores_uci_adulto_ocupados) / sum(ventiladores_uci_adulto_total),
    pct_vent_pedia_ocu = sum(ventiladores_uci_pediatria_ocupados) / sum(ventiladores_uci_pediatria_total),
    pct_vent_neo_ocu = sum(ventiladores_uci_neo_ocupados) / sum(ventiladores_ucin_total)
  ) %>%
  mutate_if(
    is.numeric,
    replace_na
  )

ggplot(covid_fecha_pctocup %>% filter(zona_covid == "Si"),
       aes(x = fecha_corte)) +
  geom_point(aes(y = pct_zn_ocu), color = "red") +
  geom_smooth(aes(y = pct_zn_ocu), color = "red", size = .5) +
  geom_point(aes(y = pct_znc_ocu), color = "blue") +
  geom_smooth(aes(y = pct_znc_ocu), color = "blue", size = .5) +
  geom_point(aes(y = pct_hosp_ocu), color = "green") +
  geom_smooth(aes(y = pct_hosp_ocu), color = "green", size = .5) +
  scale_y_continuous(labels = scales::percent) +
  labs(
    title = "Porcentaje de ocupación de camas (Fuente: SUSALUD)",
    subtitle = "<span style='color: red;'>Rojo: Zona COVID</span>, <span style='color: blue;'>Azul: Zona no COVID</span>, <span style='color: green;'>Verde: Hospital</span>",
    caption = Sys.Date(),
    x = "",
    y = ""
  ) +
  theme(
    plot.subtitle = ggtext::element_markdown()
  )

reg_covid_fecha_pctocup <- susalud_camas %>%
  group_by(fecha_corte, region, zona_covid) %>%
  summarise(
    pct_zn_ocu = sum(camas_zc_ocupados)/sum(camas_zc_total),
    pct_znc_ocu = sum(camas_znc_ocupados) / sum(camas_znc_total),
    pct_hosp_ocu = sum(camas_hosp_ocupadas) / sum(camas_hosp_total),
    pct_uci_adult_ocu = sum(uci_adultos_camas_ocupadas) / sum(uci_adultos_camas_total),
    pct_uci_pedia_ocu = sum(uci_pediatria_camas_ocupadas) / sum(uci_pediatria_camas_total),
    pct_uci_neo_ocu = sum(ucin_camas_ocupadas) / sum(ucin_camas_total),
    pct_vent_zc_ocu = sum(ventiladores_uci_zc_ocupados) / sum(ventiladores_uci_zc_total),
    pct_vent_adult_ocu = sum(ventiladores_uci_adulto_ocupados) / sum(ventiladores_uci_adulto_total),
    pct_vent_pedia_ocu = sum(ventiladores_uci_pediatria_ocupados) / sum(ventiladores_uci_pediatria_total),
    pct_vent_neo_ocu = sum(ventiladores_ucin_ocupados) / sum(ventiladores_ucin_total)
  ) %>%
  mutate_if(
    is.numeric,
    replace_na
  )

ggplot(reg_covid_fecha_pctocup %>% filter(zona_covid == "Si"),
       aes(x = fecha_corte)) +
  geom_hline(yintercept = .75, linetype = "dashed") +
  geom_point(aes(y = pct_zn_ocu), color = "red", size = .2, alhpa = .5) +
  geom_smooth(aes(y = pct_zn_ocu), color = "red", size = .5, se = FALSE) +
  geom_point(aes(y = pct_znc_ocu), color = "blue", size = .2, alhpa = .5) +
  geom_smooth(aes(y = pct_znc_ocu), color = "blue", size = .5, se = FALSE) +
  geom_point(aes(y = pct_hosp_ocu), color = "green", size = .2, alhpa = .5) +
  geom_smooth(aes(y = pct_hosp_ocu), color = "green", size = .5, se = FALSE) +
  scale_y_continuous(labels = scales::percent) +
  facet_wrap(~region, ncol = 5) +
  labs(
    title = "Porcentaje de ocupación de camas (Fuente: SUSALUD)",
    subtitle = "<span style='color: red;'>Rojo: Zona COVID</span>, <span style='color: blue;'>Azul: Zona no COVID</span>, <span style='color: green;'>Verde: Hospital</span>",
    caption = Sys.Date(),
    x = "",
    y = ""
  ) +
  theme(
    plot.subtitle = ggtext::element_markdown()
  )

# Comparación datos de Ventiladores ---------------------------------------------


ggplot(reg_covid_fecha_pctocup %>% filter(zona_covid == "Si"),
       aes(x = fecha_corte)) +
  geom_hline(yintercept = .75, linetype = "dashed") +
  geom_point(aes(y = pct_vent_zc_ocu), color = "red", size = .2, alhpa = .5) +
  geom_smooth(aes(y = pct_vent_zc_ocu), color = "red", size = .5, se = FALSE) +
  geom_point(aes(y = pct_vent_adult_ocu), color = "blue", size = .2, alhpa = .5) +
  geom_smooth(aes(y = pct_vent_adult_ocu), color = "blue", size = .5, se = FALSE) +
  geom_point(aes(y = pct_vent_pedia_ocu), color = "green", size = .2, alhpa = .5) +
  geom_smooth(aes(y = pct_vent_pedia_ocu), color = "green", size = .5, se = FALSE) +
  geom_point(aes(y = pct_vent_neo_ocu), color = "brown", size = .2, alhpa = .5) +
  geom_smooth(aes(y = pct_vent_neo_ocu), color = "brown", size = .5, se = FALSE) +
  scale_y_continuous(labels = scales::percent, limits = c(0, 1)) +
  facet_wrap(~region, ncol = 5) +
  labs(
    title = "Porcentaje de ocupación de Ventiladores (Fuente: SUSALUD)",
    subtitle = "<span style='color: red;'>Rojo: Zona COVID</span>, <span style='color: blue;'>Azul: Adultos</span>, <span style='color: green;'>Verde: Pediátrico</span>, <span style='color: brown;'>Marrón: Neonatos(?)</span>",
    caption = Sys.Date(),
    x = "",
    y = ""
  ) +
  theme(
    plot.subtitle = ggtext::element_markdown()
  )
