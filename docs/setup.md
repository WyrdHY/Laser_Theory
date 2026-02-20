# Setup

This page describes how I deploy this online notebook and includes some of the tested structure. 

## Repo Workflow
Here is the listed file tree structure of the repo: 
---
repo/
├── docs/
│ ├── index.md
│ └── setup.md
├── mkdocs.yml
└── .github/workflows/deploy.yml
---
deploy.yml will tell github to deploy the repo into this notebook style. mkdocs.yml is the configuration file that manage how things are displayed. setup.md, index.md, whaterever.md are the content you created. 

Push these to the repo. Go to github repo action, and then github will automatically detect your deploy quest based on the deploy.yml file. Then go to Page Setting, select gh_page branch/root, this will then generate the whole things. 




## Expandable derivation and equations
I am very annoyed in most of the textbooks when they say things can be easily derived or shown. As I am not that smart enough to have such insight, and every time I see such things, I know I am going to lose a lot of details. Thus I feel pissed off and want to add this feature where whenever I have something that appears to be easily shown, I can then add a detailed expandable derivation.
$$
\mathrm{FSR} = \frac{c}{n_g L}
$$

??? note "Derivation (click to expand)"
    Start from the resonance condition:

    $$
    \beta(\omega) L = 2\pi m
    $$

    Differentiate w.r.t. $\omega$:

    $$
    \frac{d\beta}{d\omega} L = 2\pi \frac{dm}{d\omega}
    $$

    Using $n_g = c \frac{d\beta}{d\omega}$, we get:

    $$
    \mathrm{FSR} = \frac{c}{n_g L}.
    $$