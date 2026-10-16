library(tidyverse)

# Had a great pho lunch

hist_p <- ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 0.1, boundary = 0) +
  scale_x_continuous(breaks = 0:5) +
  scale_y_continuous(breaks = seq(0, 6000, by = 2000)) +
  coord_cartesian(xlim = c(0, 5), ylim = c(0, 6000), expand = FALSE) +
  labs(
    title = "Histogram of Carat (weight) among 50,000 diamonds",
    subtitle = "Carats just at or above meaningful numbers are very common",
    x = "carat",
    y = "number",
    caption = "diamonds dataset from ggplot2 package"
  )

ggsave(plot = hist_p, file = "diamonds.png")