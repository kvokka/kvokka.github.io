# Mike Beliakov - Resume Site

This is the source code for my professional resume website, built with [Jekyll](https://jekyllrb.com/) and hosted on GitHub Pages. It features a clean, responsive design tailored for showcasing technical skills, experience, and certifications.

## 🚀 Getting Started

You can run this project locally using **Docker** (recommended) or a local **Ruby** environment.

### Option 1: Docker (Recommended)

Ensure you have [Docker](https://www.docker.com/products/docker-desktop) and `docker-compose` installed.

1. **Clone the repository:**
    ```bash
    git clone https://github.com/kvokka/kvokka.github.io.git
    cd kvokka.github.io
    ```

2. **Start the server:**
    ```bash
    docker-compose up
    ```

3. **Access the site:**
    Open your browser and navigate to `http://localhost:4000`.

    *Note: The server supports live reloading, so changes to files will automatically refresh the page.*

### Option 2: VS Code Dev Containers

If you use Visual Studio Code, you can open this project inside a fully configured container.

1. Install the [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension.
2. Open the project folder in VS Code.
3. Click "Reopen in Container" when prompted (or use the Command Palette: `Dev Containers: Reopen in Container`).
4. Once inside, the server should start automatically, or you can run `jekyll serve`.

### Option 3: Local Ruby Environment

If you prefer running it directly on your machine:

1. **Prerequisites:**
   * Ruby (version 2.7 or higher recommended)
   * Bundler (`gem install bundler`)

2. **Install Dependencies:**
    ```bash
    bundle install
    ```

3. **Run the Server:**
    ```bash
    bundle exec jekyll serve
    ```

4. **Access the site:**
    Go to `http://localhost:4000`.

## 📝 Customization

The site content is data-driven. You can update your information by editing the YAML files in the `_data/` directory:

* **`_data/timeline.yml`**: Your professional experience and work history.
* **`_data/programming-skills.yml`**: Top programming languages and technical skills.
* **`_data/other-skills.yml`**: Infrastructure, cloud, and tool-based skills.
* **`_data/certifications.yml`**: Certifications, awards, and publications.
* **`_config.yml`**: Global site settings (title, author, description, social links).
* **`pages/index.md`**: The main layout structure.

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
