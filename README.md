# bda-devsecops-standards

Below are the Boeing Defence Australia standards for DevSecOps tooling and SDE's. Where possible they align with [Enterprise standards](https://git.web.boeing.com/enterprise-sw-verticals/boeing-software-factory/bsf/-/blob/main/tools.md) to be deployed in software development environments.

## Software Factory Core Tools

Generally software factory tools are accessed by users via a web browser. They can be installed via helm charts into a kubernetes cluster.

| Tool Name                                                    | Capability                                                              | Notes			                                      |
| ------------------------------------------------------------ | ----------------------------------------------------------------------- | ------------------------------------------------------ |
| [Aqua](https://www.aquasec.com/)                             | Container Vulnerability Scanning			                         	 | Enterprise Licensing available [Mattermost](https://mattermost.web.boeing.com/devhub/channels/aqua) & [Boeing site](https://dev-sec-docs.web.boeing.com/aqua-overview/)													  |
| [Collaborator](https://smartbear.com/product/collaborator/)  | Formal Peer Review                     				                 | Free and paid versions available						    							  |
| [GitLab](https://about.gitlab.com)                           | CM/Version Control, CI/CD, Code Review, wiki, Rqmts Mgmt & Traceability | Free and paid versions available - Replaces Jira/Bitbucket/Confluence/Jenkins [Mattermost](https://mattermost.web.boeing.com/devhub/channels/gitlab) & [Boeing docs](https://git.web.boeing.com/gitlab/gitlab/-/blob/main/README.md)           |
| [Mattermost](https://mattermost.com/)                        | Collaboration/ChatOps                                                   | Open source [Mattermost](https://mattermost.web.boeing.com/devhub/channels/mm) & [Boeing docs](https://mattermost.pages.boeing.com/) |
| [Nexus](https://www.sonatype.com/products/nexus-repository)  | Build Artifact/Package Manager                                          | Free and paid versions available                                                       |
| [Nexus IQ](https://help.sonatype.com/iqserver)               | Vulnerability Scanning & Composition Analysis (for entire CI/CD lifecycle)                          |                                                        |
| [PlantUML](https://plantuml.com/)                            | UML diagrams                                                            | Open source                                                       |
| [SonarQube](https://www.sonarsource.com/products/sonarqube/) | Static Code Analysis                                                    | Free and paid versions available                                                       |
| [Polyspace](https://au.mathworks.com/products/polyspace.html)| Static Code Analysis for safety critical applications                                                   |                                                        |
| [Coverity](https://scan.coverity.com/)                      | Static Code Analysis                                                     | Enterprise Licensing available [Mattermost](https://mattermost.web.boeing.com/devhub/channels/coverity) & [Boeing docs](https://dev-sec-docs.web.boeing.com/coverity-overview/)                                                      |
| [VectorCAST](https://www.vector.com/int/en/products/products-a-z/software/vectorcast/#) | MC/DC Coverage & Unit Test including safety critical applications                  |                                                        |


## workstation Core Tools

These are tools that a developer/user would install on their workstation.

| Tool Name                                                    | Capability                                             | Notes			                                         |
| ------------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| [Mattermost Desktop](https://mattermost.com/apps/)           | Messaging                                              |                                                        |
| [VS Code](https://code.visualstudio.com/)                    | IDE                                                    |                                                        |
| [Eclipse](https://www.eclipse.org/downloads/)                | IDE                                                    |                                                        |
| [draw.io](https://www.diagrams.net/)                         | Diagramming                                            |                                                        |
| [Linux](https://en.wikipedia.org/wiki/Linux)                 | OS                                                     | generally rpm based such as RedHat/Oracle Linux / Amazon Linux | 
| [Docker](https://www.docker.com/),[Podman](https://podman.io/)/[Buildah](https://buildah.io/)/[Skopeo](https://github.com/containers/skopeo) | Containerization | Docker is fine for local usage. Buildah/Podman/Skopeo are recommended for pipelines due to permissions needed. |
| [Bazel](https://bazel.build/)                                | Multi-language Build System                            | Cache can be installed on the software factory         |
| [Marpit](https://marpit.marp.app/) + [draw.io](https://www.diagrams.net/) | Slide Generation                          |                                                        |
| [Jupyter Notebook](https://jupyter.org/)                     | Collaborative Analysis                                 |                                                        |
