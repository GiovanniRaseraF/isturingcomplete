# How to Contribute

You can contribute via [GitHub](https://github.com/GiovanniRaseraF/isturingcomplete) by submitting a pull request. I'll review it.

Refer to [./source/examples/X.md"](http://localhost:8000/examples/X.html) to understand how to write a post.

If you have suggestions or issues to report please [open a new Issue on Git](https://github.com/GiovanniRaseraF/isturingcomplete/issues).

## Creating a Page

1. Create a new file in the `source` folder using either **reStructuredText** or **Markdown**.
2. Link your new page within the documentation if relevant.
3. Set up the environment (currently supports **Linux** and **macOS** only):

    ```bash
    make env
    ```

    This will create a Python environment with **Sphinx** to build the website.

4. **Build and Test the Website:**

    ```bash
    make html
    make serve
    ```

    This will build the full site and serve it at: [http://localhost:8000](http://localhost:8000)