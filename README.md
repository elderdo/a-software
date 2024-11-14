# BDA DevSecOps Standards

This project is designed to build and deploy a GitLab Pages site using Markdown files located in the `docs` folder. The site is automatically generated and hosted on GitLab Pages [here](https://bda-software.pages.boeing.com/tools/bda-devsecops-standards/), allowing for easy sharing and collaboration.

## Overview

GitLab Pages is a feature that allows you to host static websites directly from a GitLab repository. This project leverages Markdown files to create a simple and effective documentation site. The Markdown files are processed and converted into HTML using `mkdocs`, which is then served as a website.

## Getting Started

Follow the steps below for making updates to the deployed GitLab pages.

**1. Clone the repository:**

```bash
git clone https://git.web.boeing.com/bda-software/tools/bda-devsecops-standards.git

```

**2. Explore the project structure:**

- `.gitlab-ci.yml`: Defines the CI/CD pipeline for building, testing, and deploying the documentation.
- `docs/`: Contains the Markdown files that make up your documentation content.
- `mkdocs.yml`:  Configures the MkDocs site, including theme, navigation, and plugins.
- `requirements.txt`: Lists the Python packages required for building the site.
- `.cspell.json`: Configures the spell checker for the project.

**3. (Optional) Set up a Dev Container (recommended):**

- If you have Docker and VS Code installed, you can use the provided Dev Container configuration for a consistent development environment.
- Obtain SRES API KEY
- Login to SRES docker registry and export credentials

  ```bash
   # Set credentials
   export API_KEY=<api-key>
   export BEMSID=<bemsid>

   # Create .env file with your credentials
   echo "BEMSID=$BEMSID" >> ./.env
   echo "API_KEY=$API_KEY" >> ./.env

   # Login to SRES docker registry
   source .env
   docker login sres.web.boeing.com:5000 -u $BEMSID -p $API_KEY
   
  ```

- Open the project in VS Code and follow the prompts to reopen the project in the container.

**4. Start writing your documentation:**

- Add or modify Markdown files in the docs/ directory.
- Use MkDocs syntax for formatting and structuring your content.
- Save the file and mkdocs serve will rebuild the site with live changes.
- Open your browser and go to localhost:8000 to view the site.

**5. Commit and create a Merge Request:**

- Commit your changes to the repository and push them to GitLab.
- Create a Merge Request in GitLab to merge your changes into the main branch.
- The CI/CD pipeline will automatically build and deploy your updated documentation to a parallel deployment environment.

**6. View your live documentation and compare:**

- Once the pipeline completes successfully, you can access your documentation in the parallel deployment environment at the URL provided in the pages job output.
- Compare your changes in the parallel deployment with the live documentation on the main branch.

**7. Merge your Merge Request:**

- Once you are satisfied with your changes, merge your Merge Request.
- This will stop the parallel deployment and trigger a new pipeline to deploy your changes to the live documentation.
