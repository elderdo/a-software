# bda-devsecops-standards

The following is the list of standard tools used within Boeing. These would be considered standards and good choices to be deployed in software development environments.

## Software Factory Core Tools

Generally software factory tools are accessed via a web browser. They can be installed via helm charts into a kubernetes cluster.

| Tool Name                                                    | Capability                                                              | Notes			                                      |
| ------------------------------------------------------------ | ----------------------------------------------------------------------- | ------------------------------------------------------ |
| [Aqua](https://www.aquasec.com/)                             | Nexus IQ Vulnerability Scanning			                         	 |														  |
| [Collaborator](https://smartbear.com/product/collaborator/)  | Formal Peer Review                     				                 | 						    							  |
| [GitLab](https://about.gitlab.com)                           | CM/Version Control, CI/CD, Code Review, wiki, Rqmts Mgmt & Traceability | Jira/bitbucket/confluence/jenkins replacement          |
| [Mattermost](https://mattermost.com/)                        | Collaboration/ChatOps                                                   |                                                        |
| [Nexus](https://www.sonatype.com/products/nexus-repository)  | Build Artifact/Package Manager                                          |                                                        |
| [Nexus IQ](https://help.sonatype.com/iqserver)               | Vulnerability Scanning    (for CI/CD lifecycle                          |                                                        |
| [PlantUML](https://plantuml.com/)                            | UML diagrams                                                            |                                                        |
| [SonarQube](https://www.sonarsource.com/products/sonarqube/) | Static Code Analysis                                                    |                                                        |
| [Polyspace](https://au.mathworks.com/products/polyspace.html)| Static Code Analysis                                                    |                                                        |
| [Coverity](https://scan.coverity.com/)                      | Static Code Analysis                                                     |                                                        |
| [VectorCAST](https://www.vector.com/int/en/products/products-a-z/software/vectorcast/#) | MC/DC Coverage & Unit Test                   |                                                        |


## workstation Core Tools

These are tools that a developer/user would install on their workstation.

| Tool Name                                                    | Capability                                             | Notes			                                         |
| ------------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| [Mattermost Desktop](https://mattermost.com/apps/)           | Messaging                                              |                                                        |
| [VS Code](https://code.visualstudio.com/)                    | IDE                                                    |                                                        |
| [Eclipse](https://www.eclipse.org/downloads/)                | IDE                                                    |                                                        |
| [draw.io](https://www.diagrams.net/)                         | Diagramming                                            |                                                        |
| [Linux](https://en.wikipedia.org/wiki/Linux)                 | OS                                                     | generally rpm based such as RedHat/Oracle Linux / Amazon Linux | 
| [Docker](https://www.docker.com/), [Podman](https://podman.io/) / [Buildah](https://buildah.io/) /[Skopeo](https://github.com/containers/skopeo) | Containerization | Docker is fine for local usage. Buildah/Podman/Skopeo are recommended for pipelines due to permissions needed. |
| [Bazel](https://bazel.build/)                                | Multi-language Build System                            | Cache can be installed on the software factory         |
| [Marpit](https://marpit.marp.app/) + [draw.io](https://www.diagrams.net/) | Slide Generation                          |                                                        |
| [Jupyter Notebook](https://jupyter.org/)                     | Collaborative Analysis                                 |                                                        |
