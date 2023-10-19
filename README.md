# bda-devsecops-standards

Below are the Boeing Defence Australia standards for DevSecOps tooling and SDE's. Where possible they align with [Enterprise standards](https://git.web.boeing.com/enterprise-sw-verticals/boeing-software-factory/bsf/-/blob/main/tools.md) to be deployed in software development environments.

Use these tools to improve your teams ability to produce quality software efficiently, securely and consistently by:

- Automating everything - Especially testing
- [Containerization](https://confluenceslt.web.au.boeing.com/pages/viewpage.action?spaceKey=BSE&title=Containerization) - Start small with DevOps pipeline tools then move onto the product itself
- Performing static code analysis - Understand and remediate vulnerabilities and code quality issues
- Ensure you have test coverage analysis and >80% of your code base is covered
- Use dependency analysis to understand what makes up your product - Licenses, vulnerabilities, updates and the ability to produce SBOMs easily

## Software Factory Core Tools

Generally software factory tools are accessed by users via a web browser. They can be installed via helm charts into a kubernetes cluster.

| Tool Name | Capability | Notes| FM1115 exists | ESATS |
| ----------| -----------|------| --------------| ------|
| [Aqua](https://www.aquasec.com/)| Container Vulnerability Scanning | Enterprise discount may be available - [Mattermost](https://mattermost.web.boeing.com/devhub/channels/aqua) & [Boeing site](https://dev-sec-docs.web.boeing.com/aqua-overview/) | No | [link](https://esats.web.boeing.com/technologyproduct/product/3556673) |
| [Collaborator](https://smartbear.com/product/collaborator/) | Formal Peer Review | Free and paid versions available - Enterprise discount may be available | Yes (E7, WSE) | [link](https://esats.web.boeing.com/technologyproduct/product/3582768) |
| [GitLab](https://about.gitlab.com) | CM/Version Control, CI/CD, Code Review, wiki, Rqmts Mgmt & Traceability | Free and paid versions available - Enterprise license available - Replaces Bitbucket/Jenkins/Bamboo/JIRA - [Mattermost](https://mattermost.web.boeing.com/devhub/channels/gitlab) & [Boeing docs](https://git.web.boeing.com/gitlab/gitlab/-/blob/main/README.md) & [Enterprise Licensing](https://git.web.boeing.com/gitlab/license-management/gitlablicensemanagement) | Yes (WSE) | [link](https://esats.web.boeing.com/technologyproduct/product/46695)  |
| [Mattermost](https://mattermost.com/) | Collaboration/ChatOps | Free and paid versions available - Gitlab integration avoids most needs for paid versions - [Mattermost](https://mattermost.web.boeing.com/devhub/channels/mm) & [Boeing docs](https://mattermost.pages.boeing.com/) | Yes (Wakulda, Currawong, E7, WSE)	| [link](https://esats.web.boeing.com/technologyproduct/product/90665) |
| [Nexus](https://www.sonatype.com/products/nexus-repository) | Build Artifact/Package Manager | Free and paid versions available - Enterprise discount may be available | Yes (WSE, Wakulda) | [link](https://esats.web.boeing.com/technologyproduct/product/3496098)
| [Nexus IQ](https://help.sonatype.com/iqserver) | Vulnerability Scanning & Composition Analysis (for entire CI/CD lifecycle)| Enterprise discount may be available | No | [link](https://esats.web.boeing.com/technologyproduct/product/3496098)|
| [PlantUML](https://plantuml.com/) | UML diagrams | Open source| No | [link](https://esats.web.boeing.com/technologyproduct/product/3555929)|
| [SonarQube](https://www.sonarsource.com/products/sonarqube/) | Static Code Analysis | Free and paid versions available - Enterprise discount may be available | Yes (Wakulda, Currawong) | [link](https://esats.web.boeing.com/technologyproduct/product/55323)|
| [Polyspace](https://au.mathworks.com/products/polyspace.html)| Static Code Analysis for safety critical applications || No | [link](https://esats.web.boeing.com/technologyproduct/product/3572426) [link](https://esats.web.boeing.com/technologyproduct/product/3572431)|
| [Coverity](https://scan.coverity.com/) | Static Code Analysis | Enterprise license available - [Mattermost](https://mattermost.web.boeing.com/devhub/channels/coverity) & [Boeing docs](https://dev-sec-docs.web.boeing.com/coverity-overview/) & [Enterprise Licensing](https://infosec.web.boeing.com/Search/ISFindit.aspx?tid=2791) | Yes (E7, WSE) | [link](https://esats.web.boeing.com/technologyproduct/product/3494134)|
| [VectorCAST](https://www.vector.com/int/en/products/products-a-z/software/vectorcast/#) | MC/DC Coverage & Unit Test including safety critical applications | | No | [link](https://esats.web.boeing.com/technologyproduct/product/3536963)|

## workstation Core Tools

These are tools that a developer/user would install on their workstation.

| Tool Name                                                    | Capability                                             | Notes                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| [Mattermost Desktop](https://mattermost.com/apps/)           | Messaging                                              |                                                        |
| [VS Code](https://code.visualstudio.com/)                    | IDE                                                    |                                                        |
| [Eclipse](https://www.eclipse.org/downloads/)                | IDE                                                    |                                                        |
| [draw.io](https://www.diagrams.net/)                         | Diagramming                                            |                                                        |
| [Linux](https://en.wikipedia.org/wiki/Linux)                 | OS                                                     | Generally rpm based such as RedHat/Oracle Linux / Amazon Linux | 
| [Docker](https://www.docker.com/),[Podman](https://podman.io/)/[Buildah](https://buildah.io/)/[Skopeo](https://github.com/containers/skopeo)/[Kaniko](https://github.com/GoogleContainerTools/kaniko) | Containerization | Docker is fine for local usage. Buildah/Podman/Skopeo/[Kaniko](https://docs.gitlab.com/ee/ci/docker/using_kaniko.html) are recommended for pipelines due to permissions needed. |
| [Bazel](https://bazel.build/)                                | Multi-language Build System                            | Cache can be installed on the software factory         |
| [Marpit](https://marpit.marp.app/) + [draw.io](https://www.diagrams.net/) | Slide Generation                          |                                                        |
| [Jupyter Notebook](https://jupyter.org/)                     | Collaborative Analysis                                 |                                                        |

## Software Design best practices

| name | link | notes |
| ---- | ---- | ----- |
| Boeing DP | <https://boeingdesignpractices.web.boeing.com/design_practice/view/18033973353374866906?status=Approved> |
| Boeing Playbooks  | <https://playbooks.web.boeing.com/wiki/DP:Enterprise_Software_Design_Practice> |
| Boeing Software Security Requirements | <https://besweb.web.boeing.com/Search/ISFindIt?aid=58> |
| Nist - Secure Software Development Framework (SSDF)| <https://csrc.nist.gov/pubs/sp/800/218/final> |

## Software supply chain best practices

| name | link | notes |
| ---- | ---- | ----- |
| Boeing playbooks | <https://playbooks.web.boeing.com/wiki/DP:Software_Build_and_Integration_DP_Page> |
| CNCF supply chain management | <https://github.com/cncf/tag-security/blob/main/supply-chain-security/supply-chain-security-paper/sscsp.md#securing-materials>  |
| Google Supply chain management | <https://cloud.google.com/resources/delivering-software-securely> |
| Google cloud supply chain management | <https://cloud.google.com/software-supply-chain-security/docs/dependencies> |

## container best practices

| name | link | notes |
| ---- | ---- | ----- |
| Dod container hardening | <https://software.af.mil/wp-content/uploads/2020/10/Final-DevSecOps-Enterprise-Container-Hardening-Guide-1.1-Public-Release.pdf> |
| google building containers best practices| <https://cloud.google.com/architecture/best-practices-for-building-containers> |
| ISM Guidelines for System Hardening| <https://www.cyber.gov.au/resources-business-and-government/essential-cyber-security/ism/cyber-security-guidelines/guidelines-system-hardening> |  The ISM refers to NIST for further information about container security.  See NIST.SP.800-190 below for further details.  
| NIST.SP.800-190 - Application Container Security Guide | <https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-190.pdf>
