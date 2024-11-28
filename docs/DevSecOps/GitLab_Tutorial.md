# GitLab Tutorial

## Groups Subgroups and Projects

- [Groups](<https://docs.gitlab.com/ee/user/group/index.html>) are a way to manage one or more related projects at the same time.
- [Subgroups](<https://docs.gitlab.com/ee/user/group/subgroups/>) are a way to to organize groups.
- [Projects](<https://docs.gitlab.com/ee/user/project/organize_work_with_projects.html>) are used to host a Git repository, to track issues, plan work, collaborate on code, and continuously build, test, and use built-in CI/CD.

It is recommended to keep related projects under one top-level group to simplify granting permissions/access and managing settings for your projects. Projects will inherit their parent group(s) members and settings.

## Epics

[Epics](<https://docs.gitlab.com/ee/user/group/epics/index.html>) are at the group level.

Use epics to:

- Break down large features into smaller deliverables that incrementally add user value.
- Track the progress of a group of related issues, specifying when the work is scheduled to start and end.
- Facilitate high-level discussions and collaboration on feature ideas and scope, ensuring alignment with the broader project objectives.
- Organize complex projects into a hierarchy of work with nested epics, providing a clear structure.
- while connecting items to the larger goals of the project.
- Collect smaller issues (user stories) for detailed tracking and efficient task management.
  
## Issues

[Issues](<https://docs.gitlab.com/ee/user/project/issues/index.html>) are at the project level.

You can use issues for many purposes, customized to your needs and workflow.

- You can create a dedicated project named `backlog` at the group level to manage issues across teams.
- Discuss the implementation of an idea.
- Track tasks and work status.
- Accept feature proposals, questions, support requests, or bug reports.
- Elaborate on code implementations.

## Labels

[Labels](<https://docs.gitlab.com/ee/user/project/labels.html>) are a way to categorize and filter issues, merge requests, and epics in GitLab.

Use labels on epics, issues, and merge requests to:

- Categorize items using colors and descriptive titles like bug, feature request, or docs.
- Dynamically filter and manage items to view work that’s in progress or completed.
- Search lists and boards.
- Communicate priority or severity of items, using scoped labels.

### Label suggestions

These are simply suggestions, feel free to use labels that work for your team.

| Work Flow Labels | Description |
|-------|-------------|
| workflow::To Do | This item is ready to be worked |
| workflow::Backlog | In backlog and needs refinement |
| workflow::Blocked | Cannot make progress on issue because waiting on something |
| workflow::In Review | Ready to be reviewed |
| workflow::LT Review | Needs to be reviewed by leadership |
| workflow::Refinement | Needs to be refined |
| workflow::In Progress | This item is actively being worked |

| Epic Labels | Description |
|-------------|-------------|
| epic type::initiative | The highest level Epic Group |
| epic type::capability | The 2nd Level Grouping of the Epic - which will provide a grouping of common features |
| epic type::feature | The lowest Level of epics, Team or Project Level Issues would be linked to these |
| epic::To Do | This Epic has been reviewed by the team and the Stories within are ready to be worked |
| epic::Blocked | Epic is blocked by another Epic from being completed |
| epic::refinement | This Epic and the Stories within are currently being refined |
| epic::In Progress | This Epic and the Stories within are actively being worked |
| epic::LT review | This epic is believed to be complete and needs a lead to review and close |

| Team Labels | Description |
|-------------|-------------|
| team::Team 1 | Team 1 |
| team::Team 2 | Team 2 |
| sme::person.name | SME for the related issue or epic |
| feature::tools & operations | Example organization |
| feature::Security and compliance | Example organization |
| type::support | Service / help desk issues |
| type::bug| bug related |
| type::improvement | Improvement idea |
| type::security | Security related |
| type::performance | Performance related |

| Time based Labels | Description |
|-------------|-------------|
| frequency::annually | Recurring task |
| frequency::bi-weekly | Recurring task |
| frequency::monthly | Recurring task |
| frequency::quarterly | Recurring task |
| period::2024Q1 | quarterly label |
| period::2024Q2 | quarterly label |
| period::2024Q3 | quarterly label |
| period::2024Q4 | quarterly label |

| Other Labels | Description |
|-------------|-------------|
| severity::critical | Severity level of critical after considering likelihood of re-occurrence if not resolved and impact |
| severity::high | Severity level of high after considering likelihood of re-occurrence if not resolved and impact |
| severity::low | Severity level of low after considering likelihood of re-occurrence if not resolved and impact |
| priority::low | Priority label |
| priority::medium | Priority label |
| priority::high | Priority label |


## Iterations

An [iteration](<https://docs.gitlab.com/ee/user/group/iterations/index.html>) in GitLab refers to a time-boxed workflow that groups issues to be worked on during a specific period of time, usually lasting 1-3 weeks.

- Typically Iterations span 2 weeks.
- [Iteration Cadences](<https://docs.gitlab.com/ee/user/group/iterations/index.html#create-an-iteration-cadence>) are containers for iterations and can be used to automate iteration scheduling.
- [Milestones (Optional)](<https://docs.gitlab.com/ee/user/project/milestones/index.html>) can be used for Program Increments, which span 8-12 weeks. You assign individual issues and MRs to Milestones.

## Boards

- [Issue boards](<https://docs.gitlab.com/ee/user/project/issue_board.html>) are a software project management tool used to plan, organize, and visualize a workflow for a feature or product release.
- [Epic boards](<https://docs.gitlab.com/ee/user/group/epics/epic_boards.html>) build on the existing epic tracking functionality and labels. Your epics appear as cards in vertical lists, organized by their assigned labels.

## RoadMaps

Epics in a group containing a start date or due date can be visualized in a form of a timeline.

The [roadmap](<https://docs.gitlab.com/ee/user/group/roadmap/index.html>) in GitLab provides a high-level overview of the planned work and progress of epics and milestones in a timeline view (that is, a Gantt chart). Use the roadmap to visualize and communicate the strategic direction and dependencies of your projects.

The epic roadmap offers the following benefits:

- Aligns the team around a shared vision and goals.
- Assists long-term planning and resource allocation.
- Identifies potential blockers, dependencies, and risks early.
- Provides stakeholders with a clear understanding of the project’s timeline and milestones.
- Helps track and update the project’s progress.

## Merge request and repository settings

### Group level MR settings
Navigate to Group level -> Settings -> General :
- Expand Merge requests
- Check `All threads must be resolved`
- Click Save changes

Navigate to Group level -> Settings -> General :
- Expand Merge request approvals
- Check `Prevent approval by author`
- Check `Prevent editing approval rules in projects and merge requests.`
- Check `remove all approvals` under When a commit is added
- Click Save changes

Navigate to Group level -> Settings -> Repository :
- Expand Default branch
- Ensure `Protected` is checked
- Under `Allowed to push` check `No one`
- Under `Allowed to merge` check `Maintainers`
- Click Save changes


### Merge rules for each project

Navigate to Settings -> Repository :
- Expand Protected branches
- Set `Allowed to merge` to `Maintainers`
- Set `Allowed to push and merge` to `no one`
- Ensure `Allowed to force push` and `Code owner approval` are disabled

Navigate to Settings -> Merge requests :
- Scroll to `Squash commits when merging` set to `require` 
  - Scroll down and click `save`
- Scroll down to Merge request approvals 
- All branches set approvals to 0
- click Add approval rule
  - Set rule name to HCPN group
  - Select main
  - Set approvals to 1-2
  - Select hcpn group or select approval users
  - Save
- NOTE: For projects with a pipeline, check `Pipelines must succeed` under ` Merge checks`


## GitLab Training links

| Description | Link |
|-------------|------|  
| Multi Team planning with GitLab | <https://www.youtube.com/watch?v=KmASFwSap7c> |
| Epics, issues, milestones, labels | <https://docs.gitlab.com/ee/topics/plan_and_track.html> |
| Scaled Agile Video | <https://insite.web.boeing.com/culture/viewMedia.do?mediaId=419820> |
| MarkDown | <https://docs.gitlab.com/ee/user/markdown.html> |
| Getting started with GitLab CI/CD | <https://docs.gitlab.com/ee/ci/> |
| Tutorial: Create and run your first GitLab CI/CD pipeline | <https://docs.gitlab.com/ee/ci/quick_start> |
