This repository builds my cv.
Content is serialized in `yaml` format in the `/publications` and `/source` directories.
Presentation is controlled by LaTeX and Citation Style Language templates in the `/config` directory.
The executable `build.sh` gathers components and feeds them to `pandoc`.
The output, `cornelius-cv.pdf`, is written to `/docs/files`.

The `pandoc` command presumes that the lua filter [`multibib.lua`](https://github.com/pandoc-ext/multibib) is available.
This filter is used to generate the lists of publications, as provided in the Markdown payload of `/source/publications.yaml`.

I reuse and adapt code from the repositories [gkthiruvathukal/cv], [mrzool/cv-boilerplate], and [jgm/pandoc-templates].

[gkthiruvathukal/cv]: https://github.com/gkthiruvathukal/cv
[mrzool/cv-boilerplate]: https://github.com/mrzool/cv-boilerplate
[jgm/pandoc-templates]: https://github.com/jgm/pandoc-templates
