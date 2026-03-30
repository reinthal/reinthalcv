# Alexander Reinthal's CV

- Phone: +46 70 918 68 50
- Email: [email@reinthal.me](mailto:email@reinthal.me)
- Location: Gothenburg, Sweden
- Website: [reinthal.me](https://reinthal.me/)
- LinkedIn: [alexander-reinthal](https://linkedin.com/in/alexander-reinthal)
- GitHub: [reinthal](https://github.com/reinthal)


#  

7 years of industry experience - cybersecurity operations - machine learning - data science & engineering

# Publications

## Data Modelling for Predicting Exploits ([10.1007/978-3-030-03638-6_21](https://doi.org/10.1007/978-3-030-03638-6_21))
- Nov 2018
- Reinthal, A, Filippakis, E., Almgren, M.
- Springer LNCS: Nordic Conference on Secure IT Systems

# Research Projects

## [Detecting Piecewise Cyber Espionage in Model APIs](https://apartresearch.com/project/detecting-piecewise-cyber-espionage-in-model-apis-a8gx)

- Nov 2025 – Nov 2025
- Showed that piecewise misuse — where individual requests appear benign — can be detected by modelling activity using the cyber kill chain
- Correlated data across requests (e.g. IP addresses) to surface patterns that per-request guardrails like Llama Guard 3 miss
- Co-authored with Arthur Colle, David Williams-King, Yingquan Li, and Lihn Le

## [Detecting Deception in Chinese Models](https://github.com/reinthal/deception-detection-in-chinese-modelsels)

- Jan 2026 – Feb 2026
- Extended "Detecting Strategic Deception Using Linear Probes" to Qwen 2.5 models, achieving AUROC 0.849 on deception detection
- Investigated whether deception and political censorship share the same linear representation in activation space using custom datasets on politically sensitive topics
- Found optimal layers for probes, conducted steering experiments, and increased deception with model size (7B to 32B), with larger models showing cleaner deception-score separation between non-sensitive and sensitive topics
- Discovered that Qwen spontaneously switches to Chinese when asked sensitive questions in English, consistent with a refusal/anti-jailbreaking mechanism

## [Robustness of Emergent Misalignment](https://github.com/reinthal/inoculation-prompting)

- Jan 2026 – Feb 2026
- Found EM is brittle to further aligned SFT: 6/7 post-EM fine-tunes substantially reduced EM from a 31.02% baseline
- Aligned/neutral controls sharply reduced EM (e.g., GSM8K 12.53%, CoT Cooking 0.30%, Good Medical 0.10%)
- One self-distilled control (GSM8K Caps) increased EM to 38.83%, suggesting benign-seeming self-training can worsen EM

## Novel AI Control Protocol Classes: Evaluation and Scalability

- Jan 2026 – present
- Building on Greenblatt et al.'s control evaluation framework to evaluate hierarchical and parallel control structures against simple trusted-untrusted model pairs
- Researching whether complex oversight structures offer more safety-usefulness Pareto frontiers, particularly as the capability gap between trusted and untrusted models widens

# Certificates

- Bluedot Technical Ai safety, Completed: 2026-03-21
- Bluedot AGI Strategy, Completed: 2025-10-07
# Experience

## Bluedot Impact, Facilitator

- Mar 2026 – Mar 2026
- Facilitated the Technical AI safety course during a one-week intensive course. Received outstanding feedback from course participants and we collectively started a 1-month plan accountability channel on the Bluedot slack ensure we stay on target.

## ARENA 7.0, Alum

- Jan 2026 – Feb 2026
- Research projects placed 1st (Detecting Deception in Chinese Models) and 3rd (Inoculation Prompting Against Emergent Misalignment).
- ARENA prepares fellows for work as researchers in technical AI Safety.
- The curriculum is tought over five high-paced weeks and teaches the transformer architecture, mechanistic interpretability, RLHF, evals and working with the Inspect framework by leading researchers in the field.

## Knowit Solutions Cocreate, Data Platform Engineer / Tech Lead / Data Scientist

- Feb 2022 – present
- Gothenburg, Sweden
- Mentored junior engineers
- Compared multiple LLM observability tools for use with a job-ad-to-consultant matching LLM platform. (LangChain, Langfuse, Arize Phoenix).
- Deployed Arize Phoenix to monitor LLM calls and model performance in production environments.

## NTT Security, Security Analyst

- Apr 2019 – Jan 2022
- Gothenburg, Sweden
- Developed predictive analytics tooling for detecting malicious network traffic, leveraging Python, machine learning, and distributed processing.
- Provided mentorship and security training, educating analysts on threat intelligence, anomaly detection, and alert triage automation.

## Ericsson, Python Software Engineer

- June 2017 – Oct 2018
- Gothenburg, Sweden
- Led a team to develop a log parsing and analytics tool that scaled into a dedicated engineering team at Ericsson.

# Open Source and Personal Projects

## [Open Source Contributions](https://github.com/reinthal)

- Dagster Contribution: [PR #24188](https://github.com/dagster-io/dagster/pull/24188) – Enhanced workflow orchestration for ML pipeline monitoring
- DLT Hub Contribution: [PR #594](https://github.com/dlt-hub/verified-sources/pull/594) – Improved data ingestion reliability for ML applications

## [Malicious Domain Prediction System](https://github.com/reinthal/lpp)

- 2020 – 2021
- Reduced analysis of high-volume bad domains from 1 hour per shift to less than 20 minutes per shift
- Implemented real-time inference pipeline with performance monitoring

## [Data Breach Analysis Pipeline](https://github.com/reinthal/howigotpwned)

- 2024 – 2025
- Developed scalable data processing pipeline using Apache Iceberg, Flink, and Spark to analyze high-volume breach data
- Passion project to test new technologies that required big data

# Skills

- Machine Learning & AI: PyTorch, Jax, Einops, XGBoost, SciKit Learn, Jupyter,  LLM Observability (Inspect, LangChain, Langfuse, Arize Phoenix),
- Programming Languages: Python, Javascript, SQL, Rust, C/C++, R, Nix, Terraform
- Platforms & Tools: Modal, Runpod, Openweights, Weights & Biases, Spark, Flink, Iceberg, Databricks, Dagster, Snowflake, dbt, Apache Superset
- Infrastructure & DevOps: Nix, Docker, Kubernetes, FluxCD, GitOps, CI/CD pipelines, Terraform, AWS (EC2, S3, IAM)
# Education

## Chalmers Technical University, MS in Engineering Physics

- Sept 2016 – June 2018
- Gothenburg, Sweden
- Coursework: Statistical Physics, Neural Networks and Machine Learning

## Gothenburg University, BS in Computer Science

- Sept 2013 – June 2016
- Gothenburg, Sweden
- Coursework: Algorithms, Testing, Debugging and Verification, Theoretical Computer Science, Operating Systems, Cryptography, Cyber Security

