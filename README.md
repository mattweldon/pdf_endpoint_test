# PdfEndpointTest

Quick and dirty testbed Phoenix app for rendering endpoints as PDFs, using the [HtmlToPdf](http://github.com/mattweldon/html_to_pdf) library.

## Todo

[ ] Make controller code less verbose when rendering a template to HTML.
[ ] Move logic into a Plug that can be applied to individual endpoints, which can then use the default `render` functions.
