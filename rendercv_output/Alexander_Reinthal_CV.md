# Alexander Reinthal's CV

- Phone: +46 70 918 68 50
- Email: [email@reinthal.me](mailto:email@reinthal.me)
- Location: Gothenburg, Sweden
- Website: [reinthal.me](https://reinthal.me/)
- LinkedIn: [alexander-reinthal](https://linkedin.com/in/alexander-reinthal)
- GitHub: [reinthal](https://github.com/reinthal)


#  

Cybersecurity ML engineer moving into frontier AI safety. 7 years building classifiers and detection pipelines for malicious traffic and software vulnerabilities (NTT Security; peer-reviewed exploit-prediction methodology adopted by Recorded Future). Recent AI safety work: 1st place ARENA 7.0 hackathon on deception probes, 4th of 641 at Apart Research on cross-request misuse detection in model APIs, and experience from AI control research at AI Safety Camp.

# Publications

## Data Modeling for Predicting Software Exploits ([10.1007/978-3-030-03638-6_21](https://doi.org/10.1007/978-3-030-03638-6_21))
- Nov 2018
- Reinthal, A., Filippakis, E., Almgren, M.
- Springer LNCS: Nordic Conference on Secure IT Systems

# Research Projects

## [Detecting Piecewise Cyber Espionage in Model APIs](https://apartresearch.com/project/detecting-piecewise-cyber-espionage-in-model-apis-a8gx)

- Nov 2025 – Nov 2025
- Showed that piecewise misuse — individual requests that look benign in isolation — can be detected by modelling activity across the cyber kill chain.
- Aggregated signals across disparate requests (e.g. IP correlation) to surface attack patterns that per-request guardrails like Llama Guard 3 miss.
- Co-authored with Arthur Colle, David Williams-King, Yingquan Li, and Lihn Le.

## Novel AI Control Protocol Classes: Evaluation and Scalability

- Jan 2026 – present
- Owned red-teaming work-stream: identified which open-weight models best bypass refusal training to use as untrusted models in control evals.
- Relevant to DeepMind responsibilities around AI control, agentic threat modelling, and long-horizon attack robustness.

## [Detecting Deception in Chinese Models](https://github.com/reinthal/deception-detection-in-chinese-models)

- Jan 2026 – present
- Linear probes for deception transfer to Llama-3.3-70B (AUROC > 0.74) but fail on Qwen-2.5-72B (AUROC < 0.5) while Qwen is more China-aligned on evals than Llama-3.3. A curious gap that warrants further research. Ongoing.
- Awarded a Bluedot Impact rapid grant to extend the work to additional frontier open-weight models.

## [About Emergent Misalignment](https://github.com/reinthal/about-emergent-misalignment)

- Jan 2026 – present
- Fine-tuned model organisms via SFT; showed emergent misalignment degrades capabilities by 68pp on GSM8K and that any correct-data SFT simultaneously restores capabilities and reduces EM — effects are inseparable under this training recipe.

# Experience

## Bluedot Impact, Facilitator

- Mar 2026 – present
- Part-time facilitator and mentor for the Technical AI Safety course and project track; consistent outstanding feedback from course participants.

## ARENA 7.0, Alum

- Jan 2026 – Feb 2026
- Research projects placed 1st (Detecting Deception in Chinese Models) and 3rd (Inoculation Prompting Against Emergent Misalignment).
- Five-week intensive curriculum on transformer internals, mechanistic interpretability, RLHF, evals, JAX, and the Inspect framework — taught by leading AI safety researchers.

## Knowit Solutions Cocreate, Data Platform Engineer / Tech Lead / Data Scientist

- Feb 2022 – present
- Gothenburg, Sweden
- Implemented an OAuth-authenticated MCP gateway to secure agentic workflows — controlling tool access and authenticating model-side calls against downstream APIs.
- Compared LLM observability tooling (LangChain, Langfuse, Arize Phoenix) for a job-ad-to-consultant matching platform; deployed Arize Phoenix to production for LLM-call monitoring and model-performance tracking. Mentored junior engineers.

## NTT Security, Security Analyst

- Apr 2019 – Jan 2022
- Gothenburg, Sweden
- Built ML classifiers and anomaly-detection pipelines for malicious network traffic across high-volume customer environments using Python and distributed processing.
- Designed alert-triage automation; mentored junior analysts on threat intelligence, anomaly detection, and triage workflows.

## Ericsson, Python Software Engineer

- June 2017 – Oct 2018
- Gothenburg, Sweden
- Led a team building a log-parsing and analytics tool that grew into a dedicated Ericsson engineering team.

# Open Source and Personal Projects

## [Scheming Propensity Evals on Gemini 3.1 Pro](https://github.com/reinthal/scheming-propensity)

- May 2026 – present
- Implemented the eval suite in Inspect and validated it against Gemini 3.1 Pro. Used to establish baselines on open-source models for model organisms research.

## [Casually Jailbreaking Gemini 2.5 Flash](https://www.reinthal.me/posts/casually-jailbreaking-gemini25-flash/)

- 2026 – 2026
- Practical demonstration of adversarial-robustness gaps in a production frontier model — directly relevant to the team's automated red-teaming and multi-turn attack work.

## Open Source Contributions


# Skills

- Machine Learning & AI: PyTorch, JAX (learned during ARENA 7.0), Einops, XGBoost, SciKit Learn, Jupyter; LLM evals & observability (Inspect, LangChain, Langfuse, Arize Phoenix); linear probes, SFT, automated red-teaming
- Programming Languages: Python, JavaScript, SQL, Rust, C/C++, R, Nix, Terraform
- Platforms & Tools: Modal, Runpod, Openweights, Weights & Biases, Spark, Flink, Iceberg, Databricks, Dagster, Snowflake, dbt, Apache Superset
- Infrastructure & DevOps: Nix, Docker, Kubernetes, FluxCD, GitOps, CI/CD pipelines, Terraform, AWS (EC2, S3, IAM)
- Certifications: Bluedot Impact — Technical AI Safety (2026-03); AGI Strategy (2025-10)
# Education

## Chalmers University of Technology, MS in Engineering Physics

- Sept 2016 – June 2018
- Gothenburg, Sweden
- Coursework: Statistical Physics, Neural Networks and Machine Learning

## Gothenburg University, BS in Computer Science

- Sept 2013 – June 2016
- Gothenburg, Sweden
- Coursework: Algorithms, Testing/Debugging/Verification, Theoretical Computer Science, Operating Systems, Cryptography, Cyber Security

