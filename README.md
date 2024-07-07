This repository hosts [my cv](https://github.com/icornelius/cv/releases/latest/download/cornelius-cv.pdf).
Content is serialized in `yaml` format in the `publications/` and `source/` directories.
Presentation is controlled by LaTeX and Citation Style Language templates in the `config/` directory.
The executable `build.sh` gathers components and feeds them to `pandoc`.
Build and deployment is done with GitHub Actions.

I reuse and adapt code from the repositories [gkthiruvathukal/cv], [mrzool/cv-boilerplate], and [jgm/pandoc-templates].

[gkthiruvathukal/cv]: https://github.com/gkthiruvathukal/cv
[mrzool/cv-boilerplate]: https://github.com/mrzool/cv-boilerplate
[jgm/pandoc-templates]: https://github.com/jgm/pandoc-templates
