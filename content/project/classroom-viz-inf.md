+++
# Date this page was created.
date = "2020-06-17"

# Project title.
title = "Visual Inferece for the Classroom"

# Project summary to display on homepage.
summary = "Materials to help statistics educators incorporate visual inference protocols into their classrooms."

# Optional image to display on homepage (relative to `static/img/` folder).
image_preview = ""

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ["stat-ed", "viz"]

# Optional external URL for project (replaces project detail page).
external_link = ""

# Does the project detail page use math formatting?
math = false

# Optional featured image (relative to `static/img/` folder).
[header]
image = ""
caption = ""

+++

In the classroom, we traditionally visualize inferential concepts related to inference using static graphics or interactive apps. For example, there is a long history of using apps to visualize sampling distributions. Recent developments in statistical graphics have created an opportunity to bring additional visualizations into the classroom to hone student understanding. Specifically, the lineup protocol (Buja et al. 2009) provides a framework for students see the difference between signal and noise. This protocol involves embedding a plot of observed data in field of null plots. This approach has proved valuable in visualizing randomization/permutation tests, diagnosing models, and even conducting valid inference when distributional assumptions break down.

In addition to writing about the use of visual inference in the classroom, I've also developed  materials to facilitate its use.

- [Tutorial using nullabor + ggplot2 to create lineups in R](https://aloy.github.io/classroom-vizinf/)

- Suite of Shiny apps for lineups in intro stats

  + [Detecting association: Two categorical variables](http://shinyapps.its.carleton.edu/multi-sample-cat-app)
  + [Detecting association: Quantitative vs. categorical](http://shinyapps.its.carleton.edu/multi-sample-quant-app)
  + [Exploring residual plots in SLR](http://shinyapps.its.carleton.edu/lm-resids-app)
  + [Interpreting Q-Q plots](http://shinyapps.its.carleton.edu/qqplots-app)