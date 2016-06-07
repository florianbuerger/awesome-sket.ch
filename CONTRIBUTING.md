## Contributing

All contributions are welcome!

To add new plugins, look at [`src/data/plugins.json`](src/data/plugins.json). All fields are required except for image and description. If you want to provide an image, either add the image to `src/assets/img` as `.png, .jpg` or `.gif` or enter the direct URL. You can use markdown for the `description` and `overview`. If the description is very long, you can force a new *row* by providing `expand=true`. See an example below:

````json
{
  "plugins": [{
    "name": "Name for the plugin",
    "url": "The website",
    "author": {
      "name": "The author’s name is displayed next to the plugin name",
      "url": "and links to this url"
    },
    "image": "An optional image path or empty string",
    "expand": true,
    "overview": "A short description",
    "description": "A longer description displayed below the first paragraph. You can use markdown syntax to add links, bold, headlines etc."
  }
}

````
