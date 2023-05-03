# load packages
library(tidyverse)

# create fake dataset
score <- rnorm(100, 50, 10)
time <- rnorm(100, 10, 3)
name <- LETTERS[1:10]
cluster <- rep(name, 10)
df <- tibble(score, time, cluster)
df

# create basic plot
basic_plot <- ggplot(df, aes(time, score, color = cluster)) +
  geom_point() +
  ggtitle('basic plot') 
# add theme to basic plot
basic_plot + 
  #text themes
  theme(
  axis.title = element_text(
    size = 10 ,
    family = 'sans',
    color = 'deepskyblue3',
    face = 'plain'
    ),
  title = element_text(
    size = 14,
    family = 'sans' ,
    color = 'deepskyblue3',
    face = 'plain'),
  #line themes
  axis.ticks = element_blank(),
  panel.grid = element_blank(),
  #rect themes
  panel.background = element_rect(
    color = 'deepskyblue3', fill = 'azure'),
  strip.background = element_rect(
    color = ''),
  plot.background = element_rect(
    fill = 'white'),
  #legend 
)


