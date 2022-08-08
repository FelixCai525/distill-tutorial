library(tidyverse)
library(ggplot2)
library(ggthemes)

car_plot <- mtcars |>  
  select(mpg, wt)  |>  
  ggplot(aes(wt, mpg)) +
  geom_point() +
  geom_smooth(method = "lm", formula = y ~ x, se = FALSE) +
  theme_clean() +
  labs(title = "Fuel Efficiency and Weight",
       subtitle = "Heavier cars are less fuel efficient",
       x = "Weight (1,000s of lbs)",
       y = "MPG",
       caption = "Henderson & Vellerman")
write_rds(car_plot, "car_plot.rds")

