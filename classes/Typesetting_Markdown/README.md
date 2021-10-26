# Typesetting with Markdown

There are a number of [Markdown flavours](https://en.wikipedia.org/wiki/Markdown).  Some people even use it to write and typeset their manuscripts (as we will learn to do with LaTeX).  We're only going to learn enough to:
1) write clear README files for our GitHub repositories, and
2) knit together code-integrated reports on analyses performed in R (for your digital notebook or your _annual_ committee meetings..._hint, hint!_).

### Required readings (_before class_)
- [Markdown in 3 minutes](https://github.com/scholmd/scholmd/wiki/Learn-markdown-in-3-minutes)
- [R Markdown Quick tour](https://rmarkdown.rstudio.com/authoring_quick_tour.html)


### To do (_before class_)
_Nothing_

### Class structure
- Create/format your GitHub READMEs (or data-folder meta-data files) using at least 4 of the elements summarized in [Markdown in 3 minutes](https://github.com/scholmd/scholmd/wiki/Learn-markdown-in-3-minutes) (_40 min._)
- Create a barebones report using knitR in RStudio using [R Markdown Quick tour](https://rmarkdown.rstudio.com/authoring_quick_tour.html) or an RStudio R Markdown template* (_40 min._ but see note in next bullet)
- If you are already an experienced RMarkdown user, an alternative exercise is to construct a Jupyter notebook to display equations on Github. A shortcoming of Github markdown is that it cannot display equations using a LaTeX-like language. An example notebook is [here](../Typesetting_Markdown/displaying_equations_on_github/)
- Back to your choice of [Implementation & Team troubleshooting](../Implementation/README.md) (_remaining time_)


### Markdown Cheatsheets
- [Syntax](/rmarkdown-cheatsheet-online.pdf)
- [RStudio](/rmarkdown-cheatsheet-2.0.pdf)
- [Guide](/rmarkdown-reference.pdf)

### Resources
- [kable](https://cran.r-project.org/web/packages/kableExtra/vignettes/awesome_table_in_html.html) for creating Markdown tables in R

Among many options..
- [https://markdownlivepreview.com](https://markdownlivepreview.com) cut-and-paste-style browser-based Markdown renderer
- [https://stackedit.io](https://stackedit.io) fuller-fledged browser-based Markdown editor (analagous to [Overleaf](https://www.overleaf.com) for LaTeX)

### Additional resources
- [Xie et al. R Markdown The definitive guide](https://bookdown.org/yihui/rmarkdown/)
- [Xie Dynamic Documents with R and knitr](https://yihui.org/knitr/)
- [Markdown in RStudio](https://rmarkdown.rstudio.com)
- [Markdown Science Git repo wiki](https://github.com/scholmd/scholmd/wiki)
- [R Markdown Basics in r4ds](https://r4ds.had.co.nz/r-markdown.html#r-markdown-basics)
- [R Markdown Code chunks in r4ds](https://r4ds.had.co.nz/r-markdown.html#code-chunks)
- [R Markdown Formats in r4ds](https://r4ds.had.co.nz/r-markdown-formats.html)

### Tips \& tricks
- Non-printed commenting is possible in Markdown:
	 [//]: # followed by your comment

- For inserting images into your Git readme:
```html
<br />
<p align="center">
  <a href="https://github.com/YOUR_REPO-HERE"
    <img src="DIRECTORY/file_name.png" alt="FILE_NAME" width="IMAGE_WIDTH" height="IMAGE_HEIGHT">
  </a>
