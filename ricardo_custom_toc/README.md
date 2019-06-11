# Table of Contents (2)

## Description and main features

The ricardo version of the toc2 extension enables to collect all running headers and display them in a floating window, as a sidebar or with a navigation menu. The extension is also draggable, resizable, collapsable, dockable and features automatic numerotation with unique links ids, and an optional toc cell. Sections of currently selected/edited or running cells are highlighted in the toc. Some minor diplay tweaks are also available (moving header tile/menus, widening cells); Finally, the toc can preserved when exporting to html.

The table of contents is automatically updated when modifications occur in the notebook. The toc window can be moved and resized. It can be docked as a sidebar or dragged from the sidebar into a floating window. The table of contents can be collapsed or the window can be completely hidden. The navigation menu can be enabled/disabled via the nbextensions configuration utility. It can also be resized. The position, dimensions, and states (that is 'collapsed' and 'hidden' states) are remembered (actually stored in the notebook's metadata) and restored on the next session.

There is a configurable option to skip h1 headers from the ToC, to allow their use as a notebook
title. However, this cause issues in latex exports, where h1 are converted to sections.
Alternatively, headers of any level can be omitted from being the toc by adding an html tag with the
css class `tocSkip` at the end of the header line; e.g. as in

## Export
It is possible to export (most of) table of contents functionalities to html. The idea is to link a relevant part of the javascript
extension and the css, and add a small script in the html file. This is done using a template by
```
jupyter nbconvert FILE.ipynb --template toc
```
or 
```
jupyter nbconvert FILE.ipynb --template toc2
```
An exporter is also available. It is now possible to export to html with toc by 
```
jupyter nbconvert --to html_toc FILE.ipynb 
```
If you also use latex_envs, you can embed both functionalities while exporting with 
```
jupyter nbconvert --to html_with_toclenvs FILE.ipynb 
```

For the first template (toc), the files toc2.js and main.css (originally located in `<python site-packages>/jupyter_contrib_nbextensions/nbextensions/toc2`)
must reside in the same directory as intended for the html file.
In the second template, these files are linked to the
`ipython-contrib/jupyter_contrib_nbextensions` github website.
Export configuration (parameters) shall be edited directly in the template
files (in templates directory `<python site-packages>/jupyter_contrib_nbextensions/templates`).
An option "Save as HTML (with toc)" is also provided in the File menu and
enables the direct conversion of the actual notebook.
This option requires the IPython kernel and is not present with other kernels.

 
## Testing 
- At loading of the notebook, configuration and initial rendering of the table of contents were fired on the event "notebook_loaded.Notebook". It happens that the extension is sometimes loaded *after* this event. I now rely  on a direct rendering at load and on a combination of  "notebook_loaded.Notebook" and "kernel_ready.Kernel". 

## History

- Copied from  https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tree/master/src/jupyter_contrib_nbextensions/nbextensions/toc2 June 2019
