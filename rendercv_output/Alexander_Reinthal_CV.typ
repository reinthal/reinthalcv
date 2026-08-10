// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Alexander Reinthal",
  title: "Alexander Reinthal - CV",
  footer: context { [#emph[Alexander Reinthal - Page #str(here().page()) of #str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in May 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 2cm,
  page-bottom-margin: 2cm,
  page-left-margin: 2cm,
  page-right-margin: 2cm,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "New Computer Modern",
  typography-font-family-name: "New Computer Modern",
  typography-font-family-headline: "New Computer Modern",
  typography-font-family-connections: "New Computer Modern",
  typography-font-family-section-titles: "New Computer Modern",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: true,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "◦" ,
  entries-highlights-nested-bullet:  "◦" ,
  entries-highlights-space-left: 0.4cm,
  entries-highlights-space-above: 0.25cm,
  entries-highlights-space-between-items: 0.25cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 5,
    day: 17,
  ),
)


= Alexander Reinthal

#connections(
  [#connection-with-icon("location-dot")[Gothenburg, Sweden]],
  [#link("mailto:email@reinthal.me", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[email\@reinthal.me]]],
  [#link("tel:+46-70-918-68-50", icon: false, if-underline: false, if-color: false)[#connection-with-icon("phone")[070-918 68 50]]],
  [#link("https://reinthal.me/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[reinthal.me]]],
  [#link("https://linkedin.com/in/alexander-reinthal", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[alexander-reinthal]]],
  [#link("https://github.com/reinthal", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[reinthal]]],
)


== 

An independent AI safety researcher with a taste for work at the intersection of interpretability, misuse risks, and model organisms of misalignment. I bring 7 years of industry experience across cyber-security, data, and ML engineering.

== Research Projects

#regular-entry(
  [
    #strong[#link("https://aletheias-quest.github.io/")[Aletheia's Quest: Lie detection Hackathon]]

  ],
  [
    #emph[July 2026 – Aug 2026]

  ],
  main-column-second-row: [
    #summary[Competed on the EleutherAI Team throughout the competition and ranked no. 1 for both black-box and white-box detection methods. Blog post coming soon.]

  ],
)

#regular-entry(
  [
    #strong[#link("https://github.com/reinthal/deception-detection-in-chinese-models")[Can lying probes flag a Chinese model's deceptive answers?]]

  ],
  [
    #emph[Jan 2026 – June 2026]

  ],
  main-column-second-row: [
    #summary[Found that deception probes (Apollo, 2025) are unreliable at detecting questionable answers from Chinese models on politically sensitive questions.]

    - Extension of ARENA 7.0 weekend hackathon, 1st place. Supported by Bluedot Impact rapid grant.

  ],
)

#regular-entry(
  [
    #strong[#link("https://github.com/reinthal/about-emergent-misalignment")[About Emergent Misalignment]]

  ],
  [
    #emph[June 2026 – present]

  ],
  main-column-second-row: [
    #summary[Found that emergent misalignment (EM) rate is negatively correlated with the capability benchmarks GSM8K (Pearson −0.98) and MMLU (Pearson −0.94).]

    - Extension of ARENA 7.0 capstone, 3rd place.

  ],
)

#regular-entry(
  [
    #strong[#link("https://reinthal.github.io/scheming_drivers/")[Changing the prompt for instrumental convergence evals]]

  ],
  [
    #emph[May 2026 – June 2026]

  ],
  main-column-second-row: [
    #summary[Removing pressure phrases increases misalignment rate for capability prompts #link("https://arxiv.org/pdf/2502.12206")[(He et al. 2025)] but decreases it for propensity prompts #link("https://arxiv.org/pdf/2603.01608")[(Hopman et al. 2026)] for Gemini 3.1 Pro Preview.]

  ],
)

#regular-entry(
  [
    #strong[#link("https://apartresearch.com/project/detecting-piecewise-cyber-espionage-in-model-apis-a8gx")[Detecting Piecewise Cyber Espionage in Model APIs]]

  ],
  [
    #emph[Nov 2025 – Nov 2025]

  ],
  main-column-second-row: [
    #summary[Proof of concept for detecting malicious activity across multiple agent sessions.]

    - Research continued through SPAR by David Williams-King (ERA) and Linh Le (Mila). Apart Research sprint, 4th place of 641 submissions.

  ],
)

== Experience

#regular-entry(
  [
    #strong[AI Safety Researcher]

  ],
  [
    #emph[May 2026 – present]

  ],
  main-column-second-row: [
    #emph[Independent]

    - Supported by Coefficient Giving's Career Transition grant for reducing global catastrophic risks.

  ],
)

#regular-entry(
  [
    #strong[Research mentor]

  ],
  [
    #emph[Mar 2026 – present]

  ],
  main-column-second-row: [
    #emph[Bluedot Impact]

    - Facilitator and research mentor for the Technical AI Safety course and project.

  ],
)

#regular-entry(
  [
    #strong[Alum]

  ],
  [
    #emph[Jan 2026 – Feb 2026]

  ],
  main-column-second-row: [
    #emph[ARENA 7.0]

    - Five-week intensive curriculum on transformer internals, mechanistic interpretability, RLHF, evals, JAX, and the Inspect framework.

  ],
)

#regular-entry(
  [
    #strong[Forward-deployed Engineer \/ DevSecOps \/ Tech Lead \/ Data Scientist]

    #emph[Knowit Solutions Cocreate]

  ],
  [
    #emph[Gothenburg, Sweden]

    #emph[Feb 2022 – present]

  ],
  main-column-second-row: [
    - Lead secure deployment of data platforms across multiple clients, some under protective security contracts (#link("https://www.riksdagen.se/sv/dokument-och-lagar/dokument/svensk-forfattningssamling/sakerhetsskyddslag-2018585_sfs-2018-585/")[Säkerhetsskyddslagen 2018:585]).

    - Pioneered LLM evals at the company. Implemented an OAuth-authenticated MCP gateway to secure agentic workflows.

  ],
)

#regular-entry(
  [
    #strong[Security Analyst]

    #emph[NTT Security]

  ],
  [
    #emph[Gothenburg, Sweden]

    #emph[Apr 2019 – Jan 2022]

  ],
  main-column-second-row: [
    - Deployed an ML classifier that reduced analysis time of malicious domains from 2 hours to 10 minutes per analyst per shift.

  ],
)

#regular-entry(
  [
    #strong[Python Software Engineer]

    #emph[Ericsson]

  ],
  [
    #emph[Gothenburg, Sweden]

    #emph[June 2017 – Oct 2018]

  ],
  main-column-second-row: [
    - First job where I led a team building a log-parsing and analytics tool that got funded and grew into a dedicated engineering team.

  ],
)

== Publications

#regular-entry(
  [
    #strong[Data Modeling for Predicting Software Exploits]

  ],
  [
    Nov 2018

  ],
  main-column-second-row: [
    #summary[Peer-reviewed paper predicting which CVEs become exploited in the wild. Adopted by Recorded Future's Vulnerability Intelligence product.]

    #emph[Reinthal, A., Filippakis, E., Almgren, M.. #link("https://doi.org/10.1007/978-3-030-03638-6_21")[10.1007\/978-3-030-03638-6\_21] (Springer LNCS: Nordic Conference on Secure IT Systems)]

  ],
)

== Open Source and Personal Projects

#regular-entry(
  [
    #strong[#link("https://www.reinthal.me/posts/casually-jailbreaking-gemini25-flash/")[Casually Jailbreaking Gemini 2.5 Flash]]

  ],
  [
    #emph[2026 – 2026]

  ],
  main-column-second-row: [
    #summary[Jailbroke Gemini 2.5 Flash with a few-shot in-context continuation attack, eliciting harmful recommendations.]

  ],
)

  #regular-entry(
  [
    #strong[Open Source Contributions]

  ],
  [
  ],
  main-column-second-row: [
    #summary[#link("https://github.com/reinthal")[github.com\/reinthal]]

    - #link("https://github.com/UKGovernmentBEIS/inspect_ai/pull/3987")[Inspect AI PR \#3987] Fixed Gemini 3.1 Pro + OpenRouter + Reasoning issue

    - #link("https://github.com/dagster-io/dagster/pull/24188")[Dagster PR \#24188] (ML pipeline orchestration) and #link("https://github.com/dlt-hub/verified-sources/pull/594")[DLT Hub PR \#594] (ingestion reliability)

  ],
)

== Skills

#strong[Machine Learning & AI:] PyTorch, JAX (learned during ARENA 7.0), Einops, XGBoost, SciKit Learn, Jupyter; LLM evals & observability (Inspect, LangChain, Langfuse, Arize Phoenix); linear probes, SFT, automated red-teaming

#strong[Programming Languages:] Python, JavaScript, SQL, Rust, C\/C++, R, Nix, Terraform

#strong[Platforms & Tools:] Modal, Runpod, Openweights, Weights & Biases, Spark, Docker, Kubernetes, AWS, Azure

#strong[Certifications:] Bluedot Impact — Technical AI Safety (2026-03); AGI Strategy (2025-10)

== Education

#education-entry(
  [
    #strong[Chalmers University of Technology]

    #emph[MS in Engineering Physics]

  ],
  [
    #emph[Gothenburg, Sweden]

    #emph[Sept 2016 – June 2018]

  ],
  degree-column: [
    
  ],
  main-column-second-row: [
    - Master thesis got published and put into production at Recorded Future.

    - Switched from computer science undergraduate to engineering physics graduate program and performed better.

  ],
)

#education-entry(
  [
    #strong[Gothenburg University]

    #emph[BS in Computer Science]

  ],
  [
    #emph[Gothenburg, Sweden]

    #emph[Sept 2013 – June 2016]

  ],
  degree-column: [
    
  ],
  main-column-second-row: [
    - Thesis on finding common dense subgraphs using linear programming has 4 citations.

  ],
)
