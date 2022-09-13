# Exercise 2

pacman::p_load(tidyverse, gapminder)

data(gapminder)
head(gapminder)

gapminder_clean <- gapminder %>% 
  rename(life_exp = lifeExp, gdp_per_cap = gdpPercap) %>% 
  mutate(gdp = pop * gdp_per_cap)

gapminder_clean <- filter(gapminder_clean, continent=="Americas")

gapminder_rich <- mutate(gapminder_clean, Rich = ifelse(gdp_per_cap > 10000, "Rich", "Poor"))