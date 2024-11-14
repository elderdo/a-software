---
hide:
  - navigation
  #- toc
---

# Boeing Defence Australia DevSecOps Standards

This document outlines the Boeing Defence Australia standards for DevSecOps tooling and Software Development Environments. Where possible, these standards align with [Enterprise standards](https://git.web.boeing.com/enterprise-sw-verticals/boeing-software-factory/bsf/-/blob/main/tools.md) for deployment in software development environments.

The information below presents key DevSecOps practices and standards designed to assist your team in building secure, high-quality software efficiently and consistently. It incorporates GitLab's definition of [DevOps](https://about.gitlab.com/topics/devops/), emphasizing the importance of automation, collaboration, continuous improvement, and a user-focused approach.

By adhering to these standards, your team can enhance its ability to produce quality software that meets security requirements while maintaining efficiency and consistency.

**Core Principles:**

* **Automation:** Automate everything possible, especially testing. This accelerates development, reduces human error, and ensures consistency.
* **[Containerization](https://confluenceslt.web.au.boeing.com/pages/viewpage.action?spaceKey=BSE&title=Containerization):** Adopt containerization for your DevSecOps pipeline tools and, eventually, the product itself. This improves portability, scalability, and consistency across environments.
* **Static Code Analysis:** Integrate static code analysis tools to identify vulnerabilities and code quality issues early in the development lifecycle.
* **Test Coverage Analysis:**  Strive for comprehensive test coverage (aim for over 80%) to ensure the functionality and reliability of your codebase.
* **Dependency Analysis:**  Understand your software's dependencies. Analyze licenses, known vulnerabilities, and available updates. Ensure you can easily generate a Software Bill of Materials (SBOM).

**Key Focus Areas:**

* **Collaboration and Communication:** Foster a culture of open communication and collaboration between development, security, and operations teams. Utilize tools and platforms that facilitate seamless information sharing and feedback loops.
* **Continuous Improvement:**  Embrace a mindset of continuous improvement. Regularly review and optimize your processes, tools, and technologies to enhance efficiency and effectiveness.
* **User Focus:**  Prioritize user needs and feedback throughout the development lifecycle.  Implement short feedback loops to ensure that the software meets user expectations and delivers value.

**Benefits:**

By implementing these practices, your team can:

* **Increase development speed and efficiency:** Automation and containerization streamline the development process.
* **Enhance software quality:**  Testing and code analysis ensure high-quality, reliable code.
* **Improve security:**  Early vulnerability detection and remediation through static analysis and dependency checks build security into the development lifecycle.
* **Increase transparency and collaboration:**  Clear standards and automated processes foster better communication and collaboration within the team.

**Getting Started:**

Start by gradually integrating these practices into your existing workflow. Focus on automating key processes, adopting containerization for your tools, and implementing robust testing and code analysis. Encourage collaboration, prioritize user feedback, and continuously seek ways to improve your processes.

If your project does not involve ITAR (International Traffic in Arms Regulations) and consists solely of Boeing Proprietary Data data types, you should utilize the [Boeing Software Factory](https://bsf.web.boeing.com/) for your development needs. This platform provides a streamlined environment tailored for such projects, ensuring compliance and efficiency in your software development process.

## Software Factory Core Tools

Core DevSecOps tools, such as GitLab, are essential for facilitating collaboration, automation, and continuous integration and delivery (CI/CD) within software development teams.

| Tool Name | Capability | Notes| FM1115 exists | ESATS |
| ----------| -----------|------| --------------| ------|
| [Coverity](https://scan.coverity.com/) | Static Code Analysis | Enterprise license available - [Mattermost](https://mattermost.web.boeing.com/devhub/channels/coverity) & [Boeing docs](https://dev-sec-docs.web.boeing.com/coverity-overview/) & [Enterprise Licensing](https://infosec.web.boeing.com/Search/ISFindit.aspx?tid=2791) | Yes (E7, WSE) | [link](https://esats.web.boeing.com/technologyproduct/product/3494134)|
| [GitLab](https://about.gitlab.com) | Configuration Management, Version Control System, CI/CD, code review, wikis, requirements management, and SBOM generation for supply chain security. Includes SAST, DAST, and collaboration tools like issue tracking, epics, and scaled agile planning. | Free and paid versions available - Enterprise license available - Replaces Bitbucket/Jenkins/Bamboo/JIRA - [Mattermost](https://mattermost.web.boeing.com/devhub/channels/gitlab) & [Boeing docs](https://git.web.boeing.com/gitlab/gitlab/-/blob/main/README.md) & [Enterprise Licensing](https://git.web.boeing.com/gitlab/license-management/gitlablicensemanagement) | Yes (WSE) | [link](https://esats.web.boeing.com/technologyproduct/product/46695)  |
| [Grafana](https://grafana.com/) | Open-source analytics and monitoring platform | Open source | No | [link](https://satrn.web.boeing.com/#/productdetails/3522224) |
| [JupyterHub](https://jupyter.org/hub) | Multi-user Jupyter Notebook server | Open source | No | [link](https://satrn.web.boeing.com/#/productdetails/3612823) |
| [Kroki](https://kroki.io/) | Diagram generation from text, including PlantUML | Open source | No | |
| [Mattermost](https://mattermost.com/) | Collaboration/ChatOps | Free and paid versions available - Gitlab integration avoids most needs for paid versions - [Mattermost](https://mattermost.web.boeing.com/devhub/channels/mm) & [Boeing docs](https://mattermost.pages.boeing.com/) | Yes (Wakulda, Currawong, E7, WSE) | [link](https://esats.web.boeing.com/technologyproduct/product/90665) |
| [Nexus](https://www.sonatype.com/products/nexus-repository) | Build Artifact/Package Manager | To be replaced by [Artifactory](https://jfrog.com/artifactory/) | Yes (WSE, Wakulda) | [link](https://esats.web.boeing.com/technologyproduct/product/3496098) |
| [Nexus IQ](https://help.sonatype.com/iqserver) | Vulnerability Scanning & Composition Analysis (for entire CI/CD lifecycle)| To be replaced by [Artifactory](https://jfrog.com/artifactory/) | No | [link](https://esats.web.boeing.com/technologyproduct/product/3496098)|
| [NeuVector](https://open-docs.neuvector.com/) | Container Vulnerability Scanning, Runtime Protection, Network Segmentation, and Compliance Monitoring for containerized applications | Open Source | No | [link](https://satrn.web.boeing.com/#/productdetails/3650301) |
| [SonarQube](https://www.sonarsource.com/products/sonarqube/) | Static Code Analysis | Free and paid versions available - Enterprise discount may be available | Yes (Wakulda, Currawong) | [link](https://esats.web.boeing.com/technologyproduct/product/55323)|
| [Polyspace](https://au.mathworks.com/products/polyspace.html)| Static Code Analysis for safety critical applications || No | [link](https://esats.web.boeing.com/technologyproduct/product/3572426) [link](https://esats.web.boeing.com/technologyproduct/product/3572431)|
| [VectorCAST](https://www.vector.com/int/en/products/products-a-z/software/vectorcast/) | MC/DC Coverage & Unit Test including safety critical applications | | No | [link](https://esats.web.boeing.com/technologyproduct/product/3536963)|

## Workstation Core Tools

Workstation Core Tools are essential applications that developers and users install on their local machines to enhance productivity and streamline the software development process. These tools support various tasks, including coding, debugging, diagramming, and collaboration, enabling teams to work efficiently and effectively in their development environments.

| Tool Name                                                    | Capability                                             | Notes                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------ | ------------------------------------------------------ |
| [Bazel](https://bazel.build/)                                | Multi-language Build System                            | Cache can be installed on the software factory         |
| [Docker](https://www.docker.com/),[Podman](https://podman.io/)/[Buildah](https://buildah.io/)/[Skopeo](https://github.com/containers/skopeo)/[Kaniko](https://github.com/GoogleContainerTools/kaniko) | Containerization | Docker is fine for local usage. Buildah/Podman/Skopeo/[Kaniko](https://docs.gitlab.com/ee/ci/docker/using_kaniko.html) are recommended for pipelines due to permissions needed. |
| [Draw.io](https://www.diagrams.net/)                         | Diagramming                                            |                                                        |
| [Jupyter Notebook](https://jupyter.org/)                     | Collaborative Analysis                                 |                                                        |
| [Linux](https://en.wikipedia.org/wiki/Linux)                 | OS                                                     | Generally rpm based such as RedHat/Oracle Linux / Amazon Linux |
| [Marpit](https://marpit.marp.app/) + [draw.io](https://www.diagrams.net/) | Slide Generation                          |                                                        |
| [Mattermost Desktop](https://mattermost.com/apps/)           | Messaging                                              |                                                        |
| [Visual Studio Code](https://code.visualstudio.com/)                    | IDE                                                    |                                                        |
