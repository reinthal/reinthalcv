# Alexander Reinthal's CV

- Phone: +46 70 918 68 50
- Email: [email@reinthal.me](mailto:email@reinthal.me)
- Location: Gothenburg, Sweden
- Website: [reinthal.me](https://reinthal.me/)
- LinkedIn: [alexander-reinthal](https://linkedin.com/in/alexander-reinthal)
- GitHub: [reinthal](https://github.com/reinthal)


#  
I am an independent AI safety researcher studying how models become subtly misaligned during training. I bring 7 years of industry experience across cyber-security, data, and ML engineering.

# Research Projects
## **[Testing Scheming Drivers on Instrumental Convergence Evals](https://reinthal.github.io/scheming_drivers/)**

*May 2026 – June 2026*

What happens to instrumental convergence evals when you change the prompt?

- Found that pressure phrases like 'achieve your goal in the long run' have opposite effects on misalignment rates in Gemini 3.1 Pro depending on prompt styles (1) [He et al. (2025)](https://arxiv.org/pdf/2502.12206) capability prompt and (2) [Hopman et al. (2026)](https://arxiv.org/pdf/2603.01608) propensity prompt. Pressure phrases increased the misalignment rate for (1) +0.23 [+0.19, +0.28] but decreased for (2) −0.10 [−0.15, −0.05] 95% Newcombe CI.



## **[Detecting Deception in Chinese Models](https://github.com/reinthal/deception-detection-in-chinese-models)**

*Jan 2026 – present*

Extenstion of ARENA 7.0 weekend hackathon, 1st place. Can a lying linear probe flag Chinese models answers on politically sensitive questions?

- TODO.

- Supported by Bluedot Impact rapid grant to extend the work to additional frontier open-weight models.



## **[About Emergent Misalignment](https://github.com/reinthal/about-emergent-misalignment)**

*Jan 2026 – present*

Extension of ARENA 7.0 capstone, 3rd place. Explored inoculation prompting and harmful generalization in LLMs.

- Found that emergent misalignment (EM) rate is negatively correlated on the capability benchmarks GSM8K (pearson -0.98) and MMLU (pearson −0.94) when induced by training on increasing percentages of bad medical advice.



## **[Detecting Piecewise Cyber Espionage in Model APIs](https://apartresearch.com/project/detecting-piecewise-cyber-espionage-in-model-apis-a8gx)**

*Nov 2025 – Nov 2025*

Apart Research sprint, 4th of 641 submissions — proof of concept for detecting malicious activity across multiple agent sessions.

- Individual requests can look benign in isolation (100% to 23% detection by LlamaGuard 3 on IP scans) — but can be detected by modelling activity across user sessions.

- Co-authored with Arthur Colle, David Williams-King, Yingquan Li, and Lihn Le.



# Experience
## **AI Safety Researcher**

*May 2026 – present*

*Independent*

- Researching how subtle misalignment develops during training. Inspired by ARENA seminars on RL, inoculation prompting, and natural emergent misalignment, and by my ARENA capstone. Supported by Coefficient Giving's Career Transition grant for reducing global catastrophic risks.



## **Mentor**

*Mar 2026 – present*

*Bluedot Impact*

- Part-time facilitator and mentor for the Technical AI Safety course and project.



## **Alum**

*Jan 2026 – Feb 2026*

*ARENA 7.0*

- Five-week intensive curriculum on transformer internals, mechanistic interpretability, RLHF, evals, JAX, and the Inspect framework.



## **Data Platform Engineer / Tech Lead / Data Scientist**

*Gothenburg, Sweden*

*Feb 2022 – present*

*Knowit Solutions Cocreate*

- Implemented an OAuth-authenticated MCP gateway to secure agentic workflows and pioneered LLM evals at the company.



## **Security Analyst**

*Gothenburg, Sweden*

*Apr 2019 – Jan 2022*

*NTT Security*

- Built ML classifiers and anomaly-detection pipelines for malicious network traffic across high-volume customer environments using Python and distributed processing.



## **Python Software Engineer**

*Gothenburg, Sweden*

*June 2017 – Oct 2018*

*Ericsson*

- Led a team building a log-parsing and analytics tool that grew into a dedicated Ericsson engineering team.



# Publications
## **Data Modeling for Predicting Software Exploits**

Nov 2018

Peer-reviewed paper for predicting which CVEs become exploited in the wild. Adopted by Recorded Future's Vulnerability Intelligence product (threat-intelligence company). Customers report 86% reduction in unplanned downtime, 11 hours/week saved on triage, and 73% increase in threat visibility.

Reinthal, A., Filippakis, E., Almgren, M.

[10.1007/978-3-030-03638-6_21](https://doi.org/10.1007/978-3-030-03638-6_21) (Springer LNCS: Nordic Conference on Secure IT Systems)



# Open Source and Personal Projects
## **[Casually Jailbreaking Gemini 2.5 Flash](https://www.reinthal.me/posts/casually-jailbreaking-gemini25-flash/)**

*2026 – 2026*

Jailbroke Gemini 2.5 Flash with a few-shot in-context continuation attack, eliciting harmful recommendations.

- Practical demonstration of adversarial-robustness gaps in a production frontier model — directly relevant to the team's automated red-teaming and multi-turn attack work.



## **Open Source Contributions**

[github.com/reinthal](https://github.com/reinthal)

- [Inspect AI PR #3987](https://github.com/UKGovernmentBEIS/inspect_ai/pull/3987) Fixed Gemini Pro 3.1+Openrouter+Reasoning issue

- [Dagster PR #24188](https://github.com/dagster-io/dagster/pull/24188) (ML pipeline orchestration) and [DLT Hub PR #594](https://github.com/dlt-hub/verified-sources/pull/594) (ingestion reliability)



# Skills
**Machine Learning & AI:** PyTorch, JAX (learned during ARENA 7.0), Einops, XGBoost, SciKit Learn, Jupyter; LLM evals & observability (Inspect, LangChain, Langfuse, Arize Phoenix); linear probes, SFT, automated red-teaming

**Programming Languages:** Python, JavaScript, SQL, Rust, C/C++, R, Nix, Terraform

**Platforms & Tools:** Modal, Runpod, Openweights, Weights & Biases, Spark, Docker, Kubernetes, AWS, Azure

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


