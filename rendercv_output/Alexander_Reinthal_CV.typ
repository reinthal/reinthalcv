
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Alexander Reinthal"
#let locale-catalog-page-numbering-style = context { "Alexander Reinthal - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in May 2026"
#let locale-catalog-language = "en"
#let design-page-size = "us-letter"
#let design-section-titles-font-size = 1.4em
#let design-colors-text = rgb(0, 0, 0)
#let design-colors-section-titles = rgb(0, 0, 0)
#let design-colors-last-updated-date-and-page-numbering = rgb(128, 128, 128)
#let design-colors-name = rgb(0, 0, 0)
#let design-colors-connections = rgb(0, 0, 0)
#let design-colors-links = rgb(0, 79, 144)
#let design-section-titles-font-family = "New Computer Modern"
#let design-section-titles-bold = true
#let design-section-titles-line-thickness = 0.5pt
#let design-section-titles-font-size = 1.4em
#let design-section-titles-type = "with-parial-line"
#let design-section-titles-vertical-space-above = 0.5cm
#let design-section-titles-vertical-space-below = 0.3cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = false
#let design-text-font-size = 10pt
#let design-text-leading = 0.6em
#let design-text-font-family = "New Computer Modern"
#let design-text-alignment = "justified"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = true
#let design-header-name-font-family = "New Computer Modern"
#let design-header-name-font-size = 30pt
#let design-header-name-bold = true
#let design-header-connections-font-family = "New Computer Modern"
#let design-header-vertical-space-between-name-and-connections = 0.7cm
#let design-header-vertical-space-between-connections-and-first-section = 0.7cm
#let design-header-use-icons-for-connections = true
#let design-header-horizontal-space-between-connections = 0.5cm
#let design-header-separator-between-connections = ""
#let design-header-alignment = center
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "◦"
#let design-highlights-top-margin = 0.25cm
#let design-highlights-left-margin = 0.4cm
#let design-highlights-vertical-space-between-highlights = 0.25cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.5em
#let design-entries-vertical-space-between-entries = 1.2em
#let design-entries-date-and-location-width = 4.15cm
#let design-entries-allow-page-break-in-entries = true
#let design-entries-horizontal-space-between-columns = 0.1cm
#let design-entries-left-and-right-margin = 0.2cm
#let design-page-top-margin = 2cm
#let design-page-bottom-margin = 2cm
#let design-page-left-margin = 2cm
#let design-page-right-margin = 2cm
#let design-page-show-last-updated-date = true
#let design-page-show-page-numbering = true
#let design-links-underline = true
#let design-entry-types-education-entry-degree-column-width = 1cm
#let date = datetime.today()

// Metadata:
#set document(author: name, title: name + "'s CV", date: date)

// Page settings:
#set page(
  margin: (
    top: design-page-top-margin,
    bottom: design-page-bottom-margin,
    left: design-page-left-margin,
    right: design-page-right-margin,
  ),
  paper: design-page-size,
  footer: if design-page-show-page-numbering {
    text(
      fill: design-colors-last-updated-date-and-page-numbering,
      align(center, [_#locale-catalog-page-numbering-style _]),
      size: 0.9em,
    )
  } else {
    none
  },
  footer-descent: 0% - 0.3em + design-page-bottom-margin / 2,
)
// Text settings:
#let justify
#let hyphenate
#if design-text-alignment == "justified" {
  justify = true
  hyphenate = true
} else if design-text-alignment == "left" {
  justify = false
  hyphenate = false
} else if design-text-alignment == "justified-with-no-hyphenation" {
  justify = true
  hyphenate = false
}
#set text(
  font: design-text-font-family,
  size: design-text-font-size,
  lang: locale-catalog-language,
  hyphenate: hyphenate,
  fill: design-colors-text,
  // Disable ligatures for better ATS compatibility:
  ligatures: true,
)
#set par(
  spacing: 0pt,
  leading: design-text-leading,
  justify: justify,
)
#set enum(
  spacing: design-entries-vertical-space-between-entries,
)

// Highlights settings:
#let highlights(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: design-highlights-vertical-space-between-highlights,
    indent: design-highlights-left-margin,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#show list: set list(
  marker: design-highlights-bullet,
  spacing: 0pt,
  indent: 0pt,
  body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
)

// Entry utilities:
#let three-col(
  left-column-width: 1fr,
  middle-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (auto, auto, auto),
) = [
  #block(
    grid(
      columns: (left-column-width, middle-column-width, right-column-width),
      column-gutter: design-entries-horizontal-space-between-columns,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #middle-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

#let two-col(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, auto),
  column-gutter: design-entries-horizontal-space-between-columns,
) = [
  #block(
    grid(
      columns: (left-column-width, right-column-width),
      column-gutter: column-gutter,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

// Main heading settings:
#let header-font-weight
#if design-header-name-bold {
  header-font-weight = 700
} else {
  header-font-weight = 400
}
#show heading.where(level: 1): it => [
  #set par(spacing: 0pt)
  #set align(design-header-alignment)
  #set text(
    font: design-header-name-font-family,
    weight: header-font-weight,
    size: design-header-name-font-size,
    fill: design-colors-name,
  )
  #it.body
  // Vertical space after the name
  #v(design-header-vertical-space-between-name-and-connections)
]

#let section-title-font-weight
#if design-section-titles-bold {
  section-title-font-weight = 700
} else {
  section-title-font-weight = 400
}

#show heading.where(level: 2): it => [
  #set align(left)
  #set text(size: (1em / 1.2)) // reset
  #set text(
    font: design-section-titles-font-family,
    size: (design-section-titles-font-size),
    weight: section-title-font-weight,
    fill: design-colors-section-titles,
  )
  #let section-title = (
    if design-section-titles-small-caps [
      #smallcaps(it.body)
    ] else [
      #it.body
    ]
  )
  // Vertical space above the section title
  #v(design-section-titles-vertical-space-above, weak: true)
  #block(
    breakable: false,
    width: 100%,
    [
      #if design-section-titles-type == "moderncv" [
        #two-col(
          alignments: (right, left),
          left-column-width: design-entries-date-and-location-width,
          right-column-width: 1fr,
          left-content: [
            #align(horizon, box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles))
          ],
          right-content: [
            #section-title
          ]
        )

      ] else [
        #box(
          [
            #section-title
            #if design-section-titles-type == "with-parial-line" [
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ] else if design-section-titles-type == "with-full-line" [

              #v(design-text-font-size * 0.4)
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ]
          ]
        )
      ]
     ] + v(1em),
  )
  #v(-1em)
  // Vertical space after the section title
  #v(design-section-titles-vertical-space-below - 0.5em)
]

// Links:
#let original-link = link
#let link(url, body) = {
  body = [#if design-links-underline [#underline(body)] else [#body]]
  body = [#if design-links-use-external-link-icon [#body#h(design-text-font-size/4)#box(
        fa-icon("external-link", size: 0.7em),
        baseline: -10%,
      )] else [#body]]
  body = [#set text(fill: design-colors-links);#body]
  original-link(url, body)
}

// Last updated date text:
#if design-page-show-last-updated-date {
  let dx
  if design-section-titles-type == "moderncv" {
    dx = 0cm
  } else {
    dx = -design-entries-left-and-right-margin
  }
  place(
    top + right,
    dy: -design-page-top-margin / 2,
    dx: dx,
    text(
      [_#locale-catalog-last-updated-date-style _],
      fill: design-colors-last-updated-date-and-page-numbering,
      size: 0.9em,
    ),
  )
}

#let connections(connections-list) = context {
  set text(fill: design-colors-connections, font: design-header-connections-font-family)
  set par(leading: design-text-leading*1.7, justify: false)
  let list-of-connections = ()
  let separator = (
    h(design-header-horizontal-space-between-connections / 2, weak: true)
      + design-header-separator-between-connections
      + h(design-header-horizontal-space-between-connections / 2, weak: true)
  )
  let starting-index = 0
  while (starting-index < connections-list.len()) {
    let left-sum-right-margin
    if type(page.margin) == "dictionary" {
      left-sum-right-margin = page.margin.left + page.margin.right
    } else {
      left-sum-right-margin = page.margin * 4
    }

    let ending-index = starting-index + 1
    while (
      measure(connections-list.slice(starting-index, ending-index).join(separator)).width
        < page.width - left-sum-right-margin
    ) {
      ending-index = ending-index + 1
      if ending-index > connections-list.len() {
        break
      }
    }
    if ending-index > connections-list.len() {
      ending-index = connections-list.len()
    }
    list-of-connections.push(connections-list.slice(starting-index, ending-index).join(separator))
    starting-index = ending-index
  }
  align(list-of-connections.join(linebreak()), design-header-alignment)
  v(design-header-vertical-space-between-connections-and-first-section - design-section-titles-vertical-space-above)
}

#let three-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (left, auto, right),
) = (
  if design-section-titles-type == "moderncv" [
    #three-col(
      left-column-width: right-column-width,
      middle-column-width: left-column-width,
      right-column-width: 1fr,
      left-content: right-content,
      middle-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      right-content: middle-content,
      alignments: (design-text-date-and-location-column-alignment, left, auto),
    )
  ] else [
    #block(
      [
        #three-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          middle-content: middle-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let two-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, design-text-date-and-location-column-alignment),
  column-gutter: design-entries-horizontal-space-between-columns,
) = (
  if design-section-titles-type == "moderncv" [
    #two-col(
      left-column-width: right-column-width,
      right-column-width: left-column-width,
      left-content: right-content,
      right-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      alignments: (design-text-date-and-location-column-alignment, auto),
    )
  ] else [
    #block(
      [
        #two-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let one-col-entry(content: "") = [
  #let left-space = design-entries-left-and-right-margin
  #if design-section-titles-type == "moderncv" [
    #(left-space = left-space + design-entries-date-and-location-width + design-entries-horizontal-space-between-columns)
  ]
  #block(
    [#set par(spacing: design-text-leading); #content],
    breakable: design-entries-allow-page-break-in-entries,
    inset: (
      left: left-space,
      right: design-entries-left-and-right-margin,
    ),
    width: 100%,
  )
]

= Alexander Reinthal

// Print connections:
#let connections-list = (
  [#fa-icon("location-dot", size: 0.9em) #h(0.05cm)Gothenburg, Sweden],
  [#box(original-link("mailto:email@reinthal.me")[#fa-icon("envelope", size: 0.9em) #h(0.05cm)email\@reinthal.me])],
  [#box(original-link("tel:+46-70-918-68-50")[#fa-icon("phone", size: 0.9em) #h(0.05cm)070-918 68 50])],
  [#box(original-link("https://reinthal.me/")[#fa-icon("link", size: 0.9em) #h(0.05cm)reinthal.me])],
  [#box(original-link("https://linkedin.com/in/alexander-reinthal")[#fa-icon("linkedin", size: 0.9em) #h(0.05cm)alexander-reinthal])],
  [#box(original-link("https://github.com/reinthal")[#fa-icon("github", size: 0.9em) #h(0.05cm)reinthal])],
)
#connections(connections-list)



==  


#one-col-entry(
  content: [Cybersecurity ML engineer moving into frontier AI safety. 7 years building classifiers and detection pipelines for malicious traffic and software vulnerabilities \(NTT Security; peer-reviewed exploit-prediction methodology adopted by Recorded Future\). Recent AI safety work: 1st place ARENA 7.0 hackathon on deception probes, 4th of 641 at Apart Research on cross-request misuse detection in model APIs, and experience from AI control research at AI Safety Camp.]
)


== Publications


#two-col-entry(
  left-content: [
    #strong[Data Modeling for Predicting Software Exploits]

  ],
  right-content: [
    Nov 2018
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Reinthal, A., Filippakis, E., Almgren, M.

#v(design-highlights-top-margin - design-text-leading)#link("https://doi.org/10.1007/978-3-030-03638-6_21")[10.1007/978-3-030-03638-6_21] (Springer LNCS: Nordic Conference on Secure IT Systems)])



== Research Projects


#two-col-entry(
  left-content: [
    #link("https://apartresearch.com/project/detecting-piecewise-cyber-espionage-in-model-apis-a8gx")[#strong[Detecting Piecewise Cyber Espionage in Model APIs]]
  ],
  right-content: [
    #emph[Nov 2025 – Nov 2025]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Apart Research sprint, 4th of 641 submissions. Cross-context monitoring across model-API user sessions — directly analogous to detecting coordinated harms in production frontier deployments.])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Showed that piecewise misuse — individual requests that look benign in isolation — can be detected by modelling activity across the cyber kill chain.],[Aggregated signals across disparate requests \(e.g. IP correlation\) to surface attack patterns that per-request guardrails like Llama Guard 3 miss.],[Co-authored with Arthur Colle, David Williams-King, Yingquan Li, and Lihn Le.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Novel AI Control Protocol Classes: Evaluation and Scalability]
  ],
  right-content: [
    #emph[Jan 2026 – present]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [AI Safety Camp research. Studied whether hierarchical and parallel control structures offer better safety-usefulness Pareto frontiers than simple trusted-untrusted pairs as the capability gap widens.])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Owned red-teaming work-stream: identified which open-weight models best bypass refusal training to use as untrusted models in control evals.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://github.com/reinthal/deception-detection-in-chinese-models")[#strong[Detecting Deception in Chinese Models]]
  ],
  right-content: [
    #emph[Jan 2026 – present]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [ARENA 7.0 weekend hackathon, 1st place. Linear probes for deception and politically sensitive lying across frontier open-weight models.])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Linear probes for deception transfer to Llama-3.3-70B \(AUROC > 0.74\) but fail on Qwen-2.5-72B \(AUROC < 0.5\) while Qwen is more China-aligned on evals than Llama-3.3. A curious gap that warrants further research. Ongoing.],[Awarded a Bluedot Impact rapid grant to extend the work to additional frontier open-weight models.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://github.com/reinthal/about-emergent-misalignment")[#strong[About Emergent Misalignment]]
  ],
  right-content: [
    #emph[Jan 2026 – present]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [ARENA 7.0 capstone, 3rd place. SFT-based study of how emergent misalignment couples to capability degradation.])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Fine-tuned model organisms via SFT; showed emergent misalignment degrades capabilities by 68pp on GSM8K and that any correct-data SFT simultaneously restores capabilities and reduces EM — effects are inseparable under this training recipe.],)
  ],
)



== Experience


#two-col-entry(
  left-content: [
    #strong[Facilitator]

#emph[Bluedot Impact]
  ],
  right-content: [
    #emph[Mar 2026 – present]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Part-time facilitator and mentor for the Technical AI Safety course and project track; consistent outstanding feedback from course participants.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Alum]

#emph[ARENA 7.0]
  ],
  right-content: [
    #emph[Jan 2026 – Feb 2026]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Research projects placed 1st \(Detecting Deception in Chinese Models\) and 3rd \(Inoculation Prompting Against Emergent Misalignment\).],[Five-week intensive curriculum on transformer internals, mechanistic interpretability, RLHF, evals, JAX, and the Inspect framework — taught by leading AI safety researchers.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Data Platform Engineer \/ Tech Lead \/ Data Scientist]

#emph[Knowit Solutions Cocreate]
  ],
  right-content: [
    #emph[Gothenburg, Sweden]

#emph[Feb 2022 – present]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Implemented an OAuth-authenticated MCP gateway to secure agentic workflows — controlling tool access and authenticating model-side calls against downstream APIs.],[Compared LLM observability tooling \(LangChain, Langfuse, Arize Phoenix\) for a job-ad-to-consultant matching platform; deployed Arize Phoenix to production for LLM-call monitoring and model-performance tracking. Mentored junior engineers.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Security Analyst]

#emph[NTT Security]
  ],
  right-content: [
    #emph[Gothenburg, Sweden]

#emph[Apr 2019 – Jan 2022]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Built ML classifiers and anomaly-detection pipelines for malicious network traffic across high-volume customer environments using Python and distributed processing.],[Designed alert-triage automation; mentored junior analysts on threat intelligence, anomaly detection, and triage workflows.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Python Software Engineer]

#emph[Ericsson]
  ],
  right-content: [
    #emph[Gothenburg, Sweden]

#emph[June 2017 – Oct 2018]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Led a team building a log-parsing and analytics tool that grew into a dedicated Ericsson engineering team.],)
  ],
)



== Open Source and Personal Projects


#two-col-entry(
  left-content: [
    #link("https://github.com/reinthal/scheming-propensity")[#strong[Scheming Propensity Evals on Gemini 3.1 Pro]]
  ],
  right-content: [
    #emph[May 2026 – present]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Preparing scheming-propensity evaluations for upstreaming to Inspect Framework, following the methodology from #link("https://arxiv.org/pdf/2603.01608")[arXiv:2603.01608].])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Implemented the eval suite in Inspect and validated it against Gemini 3.1 Pro. Used to establish baselines on open-source models for model organisms research.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://www.reinthal.me/posts/casually-jailbreaking-gemini25-flash/")[#strong[Casually Jailbreaking Gemini 2.5 Flash]]
  ],
  right-content: [
    #emph[2026 – 2026]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Jailbroke Gemini 2.5 Flash with a few-shot in-context continuation attack, eliciting harmful recommendations.])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Practical demonstration of adversarial-robustness gaps in a production frontier model — directly relevant to the team's automated red-teaming and multi-turn attack work.],)
  ],
)

#v(design-entries-vertical-space-between-entries)

#one-col-entry(
  content: [
    #strong[Open Source Contributions]

    #v(-design-text-leading)
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Data-engineering contributions: #link("https://github.com/dagster-io/dagster/pull/24188")[Dagster PR \#24188] \(ML pipeline orchestration\) and #link("https://github.com/dlt-hub/verified-sources/pull/594")[DLT Hub PR \#594] \(ingestion reliability\). Full activity: #link("https://github.com/reinthal")[github.com\/reinthal].])], column-gutter: 0cm)
  ],
)



== Skills


#one-col-entry(
  content: [#strong[Machine Learning & AI:] PyTorch, JAX \(learned during ARENA 7.0\), Einops, XGBoost, SciKit Learn, Jupyter; LLM evals & observability \(Inspect, LangChain, Langfuse, Arize Phoenix\); linear probes, SFT, automated red-teaming]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Programming Languages:] Python, JavaScript, SQL, Rust, C\/C++, R, Nix, Terraform]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Platforms & Tools:] Modal, Runpod, Openweights, Weights & Biases, Spark, Flink, Iceberg, Databricks, Dagster, Snowflake, dbt, Apache Superset]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Infrastructure & DevOps:] Nix, Docker, Kubernetes, FluxCD, GitOps, CI\/CD pipelines, Terraform, AWS \(EC2, S3, IAM\)]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Certifications:] Bluedot Impact — Technical AI Safety \(2026-03\); AGI Strategy \(2025-10\)]
)


== Education


// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[Chalmers University of Technology]

#emph[MS in Engineering Physics]
  ],
  right-content: [
    #emph[Gothenburg, Sweden]

#emph[Sept 2016 – June 2018]
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([Coursework: Statistical Physics, Neural Networks and Machine Learning],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[Gothenburg University]

#emph[BS in Computer Science]
  ],
  right-content: [
    #emph[Gothenburg, Sweden]

#emph[Sept 2013 – June 2016]
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([Coursework: Algorithms, Testing\/Debugging\/Verification, Theoretical Computer Science, Operating Systems, Cryptography, Cyber Security],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)



