# Demo repository for OSS NA 2025 talks

This repository contains the examples used for the demos on these talks:

- [Open Source Summit North America 2025: Who Are You Building For: Pipelines Have a Purpose - Andrew McNamara & Julen Landa Alustiza, Red Hat](https://ossna2025.sched.com/event/1zfjl/who-are-you-building-for-pipelines-have-a-purpose-andrew-mcnamara-julen-landa-alustiza-red-hat)
- [OpenSSF Community Day NA 2025: Who Are You Building For: Pipelines Have a Purpose – Andrew McNamara & Julen Landa Alustiza, Red Hat](https://openssfcdna2025.sched.com/event/1zhmp/who-are-you-building-for-pipelines-have-a-purpose-andrew-mcnamara-julen-landa-alustiza-red-hat)

## Branches

- `main` : This Readme and Kubernetes CRs for [Konflux](https://konflux-ci.dev/)
- `ee-static-containerfile`: [Ansible Execution Environment](https://docs.ansible.com/ansible/latest/getting_started_ee/index.html) with static Container build context.
- `ee-builder-sandbox`: [Ansible Execution Environment](https://docs.ansible.com/ansible/latest/getting_started_ee/index.html) using [ansible-builder].(https://ansible.readthedocs.io/projects/builder/en/latest/) and a custom sandbox task.
- `ee-builder-trusted`: [Ansible Execution Environment](https://docs.ansible.com/ansible/latest/getting_started_ee/index.html) using [ansible-builder].(https://ansible.readthedocs.io/projects/builder/en/latest/) and a [Trusted Task](https://conforma.dev/docs/policy/trusted_tasks.html)
- `rhdh-dynamic-plugins`: [RHDH Dynamic Plugins](https://github.com/redhat-developer/rhdh/blob/main/docs/dynamic-plugins/index.md) using a [Trusted Task](https://conforma.dev/docs/policy/trusted_tasks.html).
- `make-containerfile`: Example repo using a [make](https://www.gnu.org/software/make/manual/make.html) target to generate the Containerfile.
