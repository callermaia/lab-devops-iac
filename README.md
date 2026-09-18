# 🚀 Lab DevOps: Observabilidade, IaC & Automação GCP

Este repositório contém a solução completa de um laboratório prático focado em observabilidade, automação de diagnósticos de sistemas, conteinerização e provisionamento de infraestrutura como código (IaC) integrada ao Google Cloud Platform (GCP).

---

## 📌 O que foi feito neste projeto

### 1. 🐍 Script de Diagnóstico e Automação (Python)
* Desenvolvido script Python (`check_sistema.py`) para coleta de métricas em tempo real (CPU, RAM, Disco e Rede).
* Exportação de dados estruturados em JSON e envio de notificações para Webhook do Microsoft Teams.
* Integração nativa com **Google Cloud Storage (GCS)** para armazenamento seguro de relatórios.

### 2. 🐳 Conteinerização & Execução Local (Docker)
* Empacotamento do serviço em imagem Linux otimizada via `Dockerfile`.
* Orquestração com **Docker Compose** mapeando credenciais locais do GCP (`gcloud`) e diretórios de logs do host.

### 3. 🏗️ Infraestrutura como Código (Terraform)
* Declaração de recursos no GCP (Buckets GCS) utilizando arquivos do **Terraform** (`main.tf`, `variables.tf`, `outputs.tf`).
* Configuração do **Application Default Credentials (ADC)** para autenticação segura em ambiente de desenvolvimento.

### 4. 🔄 Pipeline de CI/CD (GitHub Actions)
* Esteira automatizada no GitHub Actions disparada a cada `push` ou `pull_request` na branch `main`.
* **Validações de IaC:** Formatação automática (`terraform fmt -check`) e validação de sintaxe (`terraform validate`).
* Execução e validação automatizada das rotinas do script Python.

### 5. 🖥️ Observabilidade & Ambiente Virtualizado (Vagrant, Prometheus & Grafana)
* Provisionamento de VM Linux via `Vagrantfile`.
* Coleta de métricas do SO com **Node Exporter**.
* Visualização em tempo real do uso de CPU, RAM e I/O de disco através do **Grafana** e **Prometheus**.

---

## 🛠️ Tecnologias Utilizadas

| Categoria | Tecnologias |
| :--- | :--- |
| **Linguagens & Scripts** | Python 3.11, Bash |
| **Cloud Provider** | Google Cloud Platform (GCS, gcloud CLI) |
| **Infraestrutura como Código** | Terraform, Vagrant, VirtualBox |
| **Conteinerização** | Docker, Docker Compose |
| **Observabilidade** | Prometheus, Grafana, Node Exporter |
| **CI/CD & Versionamento** | Git, GitHub, GitHub Actions |

---

## 🚀 Como Executar o Projeto Localmente

### 1. Clonar o repositório
```bash
git clone [https://github.com/callermaia/lab-devops-iac.git](https://github.com/callermaia/lab-devops-iac.git)
cd lab-devops-iac

2. Executar a aplicação via Docker Compose
Certifique-se de que autenticou no GCP previamente com gcloud auth application-default login:

Bash
docker compose up --build

3. Validar a Infraestrutura com Terraform
Bash
cd terraform
terraform init
terraform plan

4. Subir a stack de Observabilidade (Vagrant)
Bash
vagrant up
vagrant ssh
📝 Lições Aprendidas
Autenticação em Contêineres: Uso do Application Default Credentials (ADC) mapeando o volume do .config/gcloud local para dentro do contêiner Docker em modo leitura (:ro).

Isolamento de Kernel: Contêineres rodando sob o WSL2 reportam o uso de recursos do kernel Linux virtualizado, exigindo mapeamento correto para leitura de dados do host.

Segurança no Git: Ignorar pastas pesadas e binários (como .terraform/ e .vagrant/) no .gitignore evita estouro do limite do GitHub e contaminação do histórico.