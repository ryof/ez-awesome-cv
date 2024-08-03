# EZ Awesome CV
You can generate [a beautifully formatted resume by @posquit0](https://github.com/posquit0/Awesome-CV) without the need for LaTeX setup or knowledge, using only YAML configuration.

## How to publish
- Modify the contents in each `content_[lang].yaml` file under the `sections` directory.
- Configure colors and sections by modifying `config.yaml`.
- Build and run the Docker container.
```sh
docker build -t ez-awesome-cv .
docker run --rm -v $(pwd):/workspace ez-awesome-cv my-resume en
```

## License
This repository contains files licensed under different licenses.

- File `awesome-cv.cls` is licensed under the LaTeX Project Public License (LPPL) 1.3.
- All other files are licensed under the MIT License.
