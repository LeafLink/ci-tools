# Contributing to LeafLink's ci-tools

:+1::tada: First off, thanks for taking the time to contribute! :tada::+1:

The following are a set of guidelines for contributing to this repository. Following these guidelines helps to communicate that you respect the time of the maintainers of this repository. In return, they should reciprocate that respect in addressing your issue, assessing changes, and helping you finalize your changesets.

_PLEASE NOTE:_ these are mostly guidelines, not rules. Use your best judgment, and feel free to propose changes to this document in a pull request.

## Table of Contents

[What Should I Know Before Getting Started?](#what-should-i-know-before-getting-started)

[How to Contribute](#how-to-contribute)

* [Document Tone](#document-tone)
* [Your First Contribution](#your-first-contribution)
* [Getting Started](#getting-started)
* [Adding a New Section](#adding-a-new-section)
* [Review Process](#review-process)

[Getting in Touch](#getting-in-touch)

---

## What Should I Know Before Getting Started?

ci-tools is a growing set of CI-based scripts that help us manage our applications CI / CD lifecycles. We welcome all corrections, additions, and improvements that you think continue to make this repository increasingly useful for other team members.

> PLEASE NOTE: You shouldn't file a GitHub issue for changes or improvements needed to this repo! You'll get faster results by either [creating a pull request](#getting-started) or [reaching out directly to the team](#getting-in-touch).

## How to Contribute

The below sections quickly walk you through the best way to contribute to this repository. Whether it's a correction, a new script or feature, or simply a clarification within existing documentation, all contributions are welcome and appreciated!

### Getting Started

When you're ready to start contributing, make sure you've pulled the latest version of this repository locally. The base branch of this repository is `master`, so when creating a change, make sure to branch off of that. When making a branch, follow standard branch naming conventions as outlined below.

Once your work is in a state where you're ready for feedback, push the branch to GitHub and open a pull request. **All pull requests should follow the structure laid out in [the template](PULL_REQUEST_TEMPLATE.md)**.

#### Branch & commit naming conventions

Please name your branches with the following pattern:

```
{JIRA-PROJ_KEY}`-`{NUMBER}_name-of-branch
i.e. PLAT-123_updating-documentation
```

and please make sure your commit messages start with the ticket number of the work you're submitting:

```
git commit -m "PLAT-123 - made an awesome change"
```

### Review Process

The LeafLink Platform Pod team regularly reviews pull requests to this repository and get notified every time one is opened. That said, please make sure to add one or two reviewers to your pull request to make sure it doesn't slip through the cracks!

From there team members will review the change and either approve the pull request or ask for changes. **At least one review approval is required in order to merge the pull request**, and either the approver or the author may merge the pull request after it's been approved.

_PLEASE NOTE:_ in a situation where one reviewer has requested changes and another has approved the pull request, please check in with the reviewer who requested changes to make sure the pull request is in a mergable state by their estimation.

## Getting in Touch

Still need help or a point in the right direction? No problem! Make sure you're a member of the [LeafLink Slack organization](https://leaflink.slack.com) and shoot a message in the [#engineering](https://leaflink.slack.com/messages/C0ENHNT6W) channel or mention the `@eng-team` group in your message. We're happy to help!

If you're not a member of the LeafLink Slack, feel free to shoot us a note at `engineering@leaflink.com`!
