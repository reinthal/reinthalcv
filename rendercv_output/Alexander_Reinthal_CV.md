# Alexander Reinthal's CV

- Phone: +46 70 918 68 50
- Email: [email@reinthal.me](mailto:email@reinthal.me)
- Location: Gothenburg, Sweden
- Website: [reinthal.me](https://reinthal.me/)
- LinkedIn: [alexander-reinthal](https://linkedin.com/in/alexander-reinthal)
- GitHub: [reinthal](https://github.com/reinthal)


#  
I am an independent researcher studying how models become subtly misaligned during training. I bring 7 years of industry experience across cyber-security, data, and ML engineering, where I studied IT security failures using machine learning and data.

# Research Projects
## **[Testing Scheming Drivers on Instrumental Convergence Evals](https://reinthal.github.io/scheming_drivers/)**

*May 2026 – present*

What happens to instrumental convergence when you change the prompt?

- Found that pressure prompts like 'achieve your goal in the long run' have opposite effects on misalignment rates in Gemini 3.1 Pro depending on whether the model is evaluation-aware.



## **[Detecting Deception in Chinese Models](https://github.com/reinthal/deception-detection-in-chinese-models)**

*Jan 2026 – present*

ARENA 7.0 weekend hackathon, 1st place. Linear probes for deception and politically sensitive lying across frontier open-weight models.

- Linear probes for deception transfer to Llama-3.3-70B (AUROC > 0.74) but fail on Qwen-2.5-72B (AUROC < 0.5) while Qwen is more China-aligned on evals than Llama-3.3. A curious gap that warrants further research. Ongoing.

- Awarded a Bluedot Impact rapid grant to extend the work to additional frontier open-weight models.



## **[About Emergent Misalignment](https://github.com/reinthal/about-emergent-misalignment)**

*Jan 2026 – present*

ARENA 7.0 capstone, 3rd place. Investigating how emergent misalignment trades off against model capabilities.

- Found that emergent misalignment degrades capabilities by 68pp on GSM8K and that any correct-data SFT simultaneously restores capabilities and reduces EM — effects are inseparable under this training recipe.



## **[Detecting Piecewise Cyber Espionage in Model APIs](https://apartresearch.com/project/detecting-piecewise-cyber-espionage-in-model-apis-a8gx)**

*Nov 2025 – Nov 2025*

Apart Research sprint, 4th of 641 submissions — proof of concept for detecting malicious activity across multiple agent sessions.

- Individual requests can look benign in isolation (100% to 23% detection by LlamaGuard 3 on IP scans) — but can be detected by modelling activity across user sessions.

- Co-authored with Arthur Colle, David Williams-King, Yingquan Li, and Lihn Le.



# Experience
## **AI Safety Researcher**

*May 2026 – present*

*Independent*

- Researching how subtle misalignment develops during training. Inspired by seminars on RL, inoculation prompting, and natural emergent misalignment, and by my ARENA capstone.



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


