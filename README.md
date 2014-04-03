# Awesome Sketch Plugins

> [Sketch.app](http://www.bohemiancoding.com/sketch/) is really awesome for all sorts of vector design work. If you don’t know it, go check it out.

You can develop plugins using Javascript. There are tons of plugins available and this site aims to highlight the best of them. If you want to add plugin simple create a new pull-request.

## Contributing

All contributions are welcome! The simplest way to show your support for this project is to **"star" it**.

To add a new plugins, look at `src/data/plugins.json`. A plugin all fields are required except for image. If you want to provide an image either enter the url or add the image in `src/assets/img` as `.png, .jpg` or `.gif` or enter the direct URL.

````json
{
  "plugins": [{
    "name": "Name for the plugin",
    "url": "The website",
    "author": {
      "name": "The authors name is displayed next to the plugin name",
      "url": "and links to this url"
    },
    "image": "an optional image path",
    "overview": "A short description",
    "description": "A longer description displayed in the next paragraph."
  }
}

````
