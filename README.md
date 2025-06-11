# Demo repository for OSS NA 2025 talks

This repository contains the examples used for the demos on these talks:

- [Open Source Summit North America 2025: Who Are You Building For: Pipelines Have a Purpose - Andrew McNamara & Julen Landa Alustiza, Red Hat](https://ossna2025.sched.com/event/1zfjl/who-are-you-building-for-pipelines-have-a-purpose-andrew-mcnamara-julen-landa-alustiza-red-hat)
- [OpenSSF Community Day NA 2025: Who Are You Building For: Pipelines Have a Purpose – Andrew McNamara & Julen Landa Alustiza, Red Hat](https://openssfcdna2025.sched.com/event/1zhmp/who-are-you-building-for-pipelines-have-a-purpose-andrew-mcnamara-julen-landa-alustiza-red-hat)

## Components


| Component | Description | Pull Request | Conforma |
| --------- | ----------- | -------- | ------------ |
| [ee-static-containerfile](https://github.com/Zokormazo/oss-na-2025-demo/tree/ee-static-containerfile) | [Ansible Execution Environment](https://docs.ansible.com/ansible/latest/getting_started_ee/index.html) with static Container build context | [#1](https://github.com/Zokormazo/oss-na-2025-demo/pull/1) | [✅](https://github.com/Zokormazo/oss-na-2025-demo/pull/1/checks?check_run_id=43872122263) |
| [ee-builder-sandbox](https://github.com/Zokormazo/oss-na-2025-demo/tree/ee-builder-sandbox) | [Ansible Execution Environment](https://docs.ansible.com/ansible/latest/getting_started_ee/index.html) using [ansible-builder](https://ansible.readthedocs.io/projects/builder/en/latest/) and a custom sandbox task. | [#3](https://github.com/Zokormazo/oss-na-2025-demo/pull/3) | [❌](https://github.com/Zokormazo/oss-na-2025-demo/pull/3/checks?check_run_id=43873950643) |
|[ee-builder-trusted](https://github.com/Zokormazo/oss-na-2025-demo/tree/ee-builder-trusted) | [Ansible Execution Environment](https://docs.ansible.com/ansible/latest/getting_started_ee/index.html) using [ansible-builder](https://ansible.readthedocs.io/projects/builder/en/latest/) and a [Trusted Task](https://conforma.dev/docs/policy/trusted_tasks.html). | [#2](https://github.com/Zokormazo/oss-na-2025-demo/pull/2) | [✅](https://github.com/Zokormazo/oss-na-2025-demo/pull/2/checks?check_run_id=43875653086) |
| [make-containerfile](https://github.com/Zokormazo/oss-na-2025-demo/tree/make-containerfile) | Example component using a [make](https://www.gnu.org/software/make/manual/make.html) target to generate the `Containerfile` using a [Trusted Task](https://conforma.dev/docs/policy/trusted_tasks.html). | [#4](https://github.com/Zokormazo/oss-na-2025-demo/pull/4) | [✅](https://github.com/Zokormazo/oss-na-2025-demo/pull/4/checks?check_run_id=43878096782) |
| [rhdh-dynamic-plugins](https://github.com/Zokormazo/oss-na-2025-demo/tree/rhdh-dynamic-plugins) | [RHDH Dynamic Plugins](https://github.com/redhat-developer/rhdh/blob/main/docs/dynamic-plugins/index.md) using a [Trusted Task](https://conforma.dev/docs/policy/trusted_tasks.html) | [#5](https://github.com/Zokormazo/oss-na-2025-demo/pull/5) | [✅](https://github.com/Zokormazo/oss-na-2025-demo/pull/5/checks?check_run_id=43882347233) |
