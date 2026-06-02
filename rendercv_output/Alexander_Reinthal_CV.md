# Alexander Reinthal's CV

- Phone: +46 70 918 68 50
- Email: [email@reinthal.me](mailto:email@reinthal.me)
- Location: Gothenburg, Sweden
- Website: [reinthal.me](https://reinthal.me/)
- LinkedIn: [alexander-reinthal](https://linkedin.com/in/alexander-reinthal)
- GitHub: [reinthal](https://github.com/reinthal)


#  
I am an independent researcher studying how models are trained to become deceptively aligned. I am currently funded by a Coefficient Giving career transition grant. My background is in Cybersecurity, Data and ML engineer. Recent AI safety work: 1st place ARENA 7.0 hackathon on deception probes on Chinese LLMs, 4th of 641 at Apart Research on cross-request misuse detection in model APIs, and experience from AI control research at AI Safety Camp.

# Publications
## **Data Modeling for Predicting Software Exploits**

Nov 2018

Peer-reviewed methodology paper for predicting which CVEs become exploited in the wild — adopted by Recorded Future (threat-intelligence vendor) and shipped as the core of their Vulnerability Intelligence product. End-to-end example of research → scalable production system for cybersecurity ML.

Reinthal, A., Filippakis, E., Almgren, M.

[10.1007/978-3-030-03638-6_21](https://doi.org/10.1007/978-3-030-03638-6_21) (Springer LNCS: Nordic Conference on Secure IT Systems)



# Research Projects
## **[Detecting Piecewise Cyber Espionage in Model APIs](https://apartresearch.com/project/detecting-piecewise-cyber-espionage-in-model-apis-a8gx)**

*Nov 2025 – Nov 2025*

Apart Research sprint, 4th of 641 submissions. Cross-context monitoring across model-API user sessions — directly analogous to detecting coordinated harms in production frontier deployments.

- Showed that piecewise misuse — individual requests that look benign in isolation — can be detected by modelling activity across the cyber kill chain.

- Aggregated signals across disparate requests (e.g. IP correlation) to surface attack patterns that per-request guardrails like Llama Guard 3 miss.

- Co-authored with Arthur Colle, David Williams-King, Yingquan Li, and Lihn Le.



## **Novel AI Control Protocol Classes: Evaluation and Scalability**

*Jan 2026 – Apr 2026*

AI Safety Camp research. Studied whether hierarchical and parallel control structures offer better safety-usefulness Pareto frontiers than simple trusted-untrusted pairs as the capability gap widens.

- Owned red-teaming work-stream: identified which open-weight models best bypass refusal training to use as untrusted models in control evals.



## **[Detecting Deception in Chinese Models](https://github.com/reinthal/deception-detection-in-chinese-models)**

*Jan 2026 – present*

ARENA 7.0 weekend hackathon, 1st place. Linear probes for deception and politically sensitive lying across frontier open-weight models.

- Linear probes for deception transfer to Llama-3.3-70B (AUROC > 0.74) but fail on Qwen-2.5-72B (AUROC < 0.5) while Qwen is more China-aligned on evals than Llama-3.3. A curious gap that warrants further research. Ongoing.

- Awarded a Bluedot Impact rapid grant to extend the work to additional frontier open-weight models.



## **[About Emergent Misalignment](https://github.com/reinthal/about-emergent-misalignment)**

*Jan 2026 – present*

ARENA 7.0 capstone, 3rd place. About Emergent Misalignment.

- Found that emergent misalignment degrades capabilities by 68pp on GSM8K and that any correct-data SFT simultaneously restores capabilities and reduces EM — effects are inseparable under this training recipe.



# Experience
## **Mentor**

*Mar 2026 – present*

*Bluedot Impact*

- Part-time facilitator and mentor for the Technical AI Safety course and project.



## **Alum**

*Jan 2026 – Feb 2026*

*ARENA 7.0*

- Five-week intensive curriculum on transformer internals, mechanistic interpretability, RLHF, evals, JAX, and the Inspect framework — taught by leading AI safety researchers.



## **Data Platform Engineer / Tech Lead / Data Scientist**

*Gothenburg, Sweden*

*Feb 2022 – present*

*Knowit Solutions Cocreate*

- Implemented an OAuth-authenticated MCP gateway to secure agentic workflows — controlling tool access and authenticating model-side calls against downstream APIs.

- Compared LLM observability tooling (LangChain, Langfuse, Arize Phoenix) for a job-ad-to-consultant matching platform; deployed Arize Phoenix to production for LLM-call monitoring and model-performance tracking. Mentored junior engineers.



## **Security Analyst**

*Gothenburg, Sweden*

*Apr 2019 – Jan 2022*

*NTT Security*

- Built ML classifiers and anomaly-detection pipelines for malicious network traffic across high-volume customer environments using Python and distributed processing.

- Designed alert-triage automation; mentored junior analysts on threat intelligence, anomaly detection, and triage workflows.



## **Python Software Engineer**

*Gothenburg, Sweden*

*June 2017 – Oct 2018*

*Ericsson*

- Led a team building a log-parsing and analytics tool that grew into a dedicated Ericsson engineering team.



# Open Source and Personal Projects
## **[Testing Scheming Drivers on Instrumental Convergence Evals](https://reinthal.github.io/scheming_drivers/)**

*May 2026 – present*

Preparing scheming-propensity evaluations for upstreaming to Inspect Framework, following the methodology from [arXiv:2603.01608](https://arxiv.org/pdf/2603.01608).

- Implemented the eval suite in Inspect and validated it against Gemini 3.1 Pro. Used to establish baselines on open-source models for model organisms research.



## **[Casually Jailbreaking Gemini 2.5 Flash](https://www.reinthal.me/posts/casually-jailbreaking-gemini25-flash/)**

*2026 – 2026*

Jailbroke Gemini 2.5 Flash with a few-shot in-context continuation attack, eliciting harmful recommendations.

- Practical demonstration of adversarial-robustness gaps in a production frontier model — directly relevant to the team's automated red-teaming and multi-turn attack work.



## **Open Source Contributions**

Data-engineering contributions: [Dagster PR #24188](https://github.com/dagster-io/dagster/pull/24188) (ML pipeline orchestration) and [DLT Hub PR #594](https://github.com/dlt-hub/verified-sources/pull/594) (ingestion reliability). Full activity: [github.com/reinthal](https://github.com/reinthal).



# Skills
**Machine Learning & AI:** PyTorch, JAX (learned during ARENA 7.0), Einops, XGBoost, SciKit Learn, Jupyter; LLM evals & observability (Inspect, LangChain, Langfuse, Arize Phoenix); linear probes, SFT, automated red-teaming

**Programming Languages:** Python, JavaScript, SQL, Rust, C/C++, R, Nix, Terraform

**Platforms & Tools:** Modal, Runpod, Openweights, Weights & Biases, Spark, Flink, Iceberg, Databricks, Dagster, Snowflake, dbt, Apache Superset

**Infrastructure & DevOps:** Nix, Docker, Kubernetes, FluxCD, GitOps, CI/CD pipelines, Terraform, AWS (EC2, S3, IAM)

**Certifications:** Bluedot Impact — Technical AI Safety (2026-03); AGI Strategy (2025-10)

# Education
## **Chalmers University of Technology**




*Gothenburg, Sweden*


*Sept 2016 – June 2018*

*MS in Engineering Physics*

- Coursework: Statistical Physics, Neural Networks and Machine Learning



## **Gothenburg University**




*Gothenburg, Sweden*


*Sept 2013 – June 2016*

*BS in Computer Science*

- Coursework: Algorithms, Testing/Debugging/Verification, Theoretical Computer Science, Operating Systems, Cryptography, Cyber Security


