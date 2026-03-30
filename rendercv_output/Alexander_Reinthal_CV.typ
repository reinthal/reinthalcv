
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Alexander Reinthal"
#let locale-catalog-page-numbering-style = context { "Alexander Reinthal - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in Feb 2026"
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
  content: [7 years of industry experience - cybersecurity operations - machine learning - data science & engineering]
)


== Publications


#two-col-entry(
  left-content: [
    #strong[Data Modelling for Predicting Exploits]

  ],
  right-content: [
    Nov 2018
  ],
)
#one-col-entry(content:[
#v(design-highlights-top-margin);Reinthal, A, Filippakis, E., Almgren, M.

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
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Apart Research sprint \(4th place out of 641 submissions\) studying detection of piecewise misuse activity in model APIs])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Showed that piecewise misuse — where individual requests appear benign — can be detected by modelling activity using the cyber kill chain],[Correlated data across requests \(e.g. IP addresses\) to surface patterns that per-request guardrails like Llama Guard 3 miss],[Co-authored with Arthur Colle, David Williams-King, Yingquan Li, and Lihn Le],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://github.com/reinthal/deception-detection-in-chinese-modelsels")[#strong[Detecting Deception in Chinese Models]]
  ],
  right-content: [
    #emph[Jan 2026 – Feb 2026]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [ARENA 7.0 weekend hackathon \(1st place\) applying linear probing to detect deception and political censorship in Chinese-origin language models])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Extended \"Detecting Strategic Deception Using Linear Probes\" to Qwen 2.5 models, achieving AUROC 0.849 on deception detection],[Investigated whether deception and political censorship share the same linear representation in activation space using custom datasets on politically sensitive topics],[Found optimal layers for probes, conducted steering experiments, and increased deception with model size \(7B to 32B\), with larger models showing cleaner deception-score separation between non-sensitive and sensitive topics],[Discovered that Qwen spontaneously switches to Chinese when asked sensitive questions in English, consistent with a refusal\/anti-jailbreaking mechanism],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://github.com/reinthal/inoculation-prompting")[#strong[Robustness of Emergent Misalignment]]
  ],
  right-content: [
    #emph[Jan 2026 – Feb 2026]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [ARENA 7.0 capstone project \(3rd place\) testing whether emergent misalignment \(EM\) is robust to additional aligned\/neutral fine-tuning])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Found EM is brittle to further aligned SFT: 6\/7 post-EM fine-tunes substantially reduced EM from a 31.02\% baseline],[Aligned\/neutral controls sharply reduced EM \(e.g., GSM8K 12.53\%, CoT Cooking 0.30\%, Good Medical 0.10\%\)],[One self-distilled control \(GSM8K Caps\) increased EM to 38.83\%, suggesting benign-seeming self-training can worsen EM],)
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
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Ongoing AI safety research through AI Safety Camp, investigating alternative control protocol classes and their scaling properties as model capabilities increase])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Building on Greenblatt et al.'s control evaluation framework to evaluate hierarchical and parallel control structures against simple trusted-untrusted model pairs],[Researching whether complex oversight structures offer more safety-usefulness Pareto frontiers, particularly as the capability gap between trusted and untrusted models widens],)
  ],
)



== Certificates


#one-col-entry(
  content: [- Bluedot Technical AI safety, Completed: 2026-03-21],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- Bluedot AGI Strategy, Completed: 2025-10-07],
)


== Experience


#two-col-entry(
  left-content: [
    #strong[Facilitator]

#emph[Bluedot Impact]
  ],
  right-content: [
    #emph[Mar 2026 – Mar 2026]
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Facilitated the Technical AI safety course during a one-week intensive course. Received outstanding feedback from course participants and we collectively started a 1-month plan accountability channel on the Bluedot slack ensure we stay on target.],)
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
    #v(design-highlights-top-margin);#highlights([Research projects placed 1st \(Detecting Deception in Chinese Models\) and 3rd \(Inoculation Prompting Against Emergent Misalignment\).],[ARENA prepares fellows for work as researchers in technical AI Safety.],[The curriculum is tought over five high-paced weeks and teaches the transformer architecture, mechanistic interpretability, RLHF, evals and working with the Inspect framework by leading researchers in the field.],)
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
    #v(design-highlights-top-margin);#highlights([Mentored junior engineers],[Compared multiple LLM observability tools for use with a job-ad-to-consultant matching LLM platform. \(LangChain, Langfuse, Arize Phoenix\).],[Deployed Arize Phoenix to monitor LLM calls and model performance in production environments.],)
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
    #v(design-highlights-top-margin);#highlights([Developed predictive analytics tooling for detecting malicious network traffic, leveraging Python, machine learning, and distributed processing.],[Provided mentorship and security training, educating analysts on threat intelligence, anomaly detection, and alert triage automation.],)
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
    #v(design-highlights-top-margin);#highlights([Led a team to develop a log parsing and analytics tool that scaled into a dedicated engineering team at Ericsson.],)
  ],
)



== Open Source and Personal Projects



#one-col-entry(
  content: [
    #link("https://github.com/reinthal")[#strong[Open Source Contributions]]

    #v(-design-text-leading)
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Contributions to data engineering open source projects])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Dagster Contribution: #link("https://github.com/dagster-io/dagster/pull/24188")[PR \#24188] – Enhanced workflow orchestration for ML pipeline monitoring],[DLT Hub Contribution: #link("https://github.com/dlt-hub/verified-sources/pull/594")[PR \#594] – Improved data ingestion reliability for ML applications],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://github.com/reinthal/lpp")[#strong[Malicious Domain Prediction System]]
  ],
  right-content: [
    #emph[2020 – 2021]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Real-time ML prediction application for assessing malicious domains for cyber security operations])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Reduced analysis of high-volume bad domains from 1 hour per shift to less than 20 minutes per shift],[Implemented real-time inference pipeline with performance monitoring],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://github.com/reinthal/howigotpwned")[#strong[Data Breach Analysis Pipeline]]
  ],
  right-content: [
    #emph[2024 – 2025]
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Modern data lakehouse solution for analyzing large-scale password breach data])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Developed scalable data processing pipeline using Apache Iceberg, Flink, and Spark to analyze high-volume breach data],[Passion project to test new technologies that required big data],)
  ],
)



== Skills


#one-col-entry(
  content: [#strong[Machine Learning & AI:] PyTorch, Jax, Einops, XGBoost, SciKit Learn, Jupyter,  LLM Observability \(Inspect, LangChain, Langfuse, Arize Phoenix\)]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Programming Languages:] Python, Javascript, SQL, Rust, C\/C++, R, Nix, Terraform]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Platforms & Tools:] Modal, Runpod, Openweights, Weights & Biases, Spark, Flink, Iceberg, Databricks, Dagster, Snowflake, dbt, Apache Superset]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Infrastructure & DevOps:] Nix, Docker, Kubernetes, FluxCD, GitOps, CI\/CD pipelines, Terraform, AWS \(EC2, S3, IAM\)]
)


== Education


// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[Chalmers Technical University]

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
    #v(design-highlights-top-margin);#highlights([Coursework: Algorithms, Testing, Debugging and Verification, Theoretical Computer Science, Operating Systems, Cryptography, Cyber Security],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)



