# 🚀 Lab DevOps: Observabilidade & Automação de Infraestrutura

Este repositório contém o laboratório prático focado em observabilidade, 
automação de scripts de diagnósticos de sistemas e provisionamento de infraestrutura (IaC).

---

## 📌 O que foi feito nesta fase

### 3. 🖥️ Infraestrutura Virtualizada com Vagrant
* Automação do provisionamento de VM Linux via `Vagrantfile`.
* Criação de ambiente isolado para execução de stacks de monitoramento.

### 4. 📊 Observabilidade Centralizada (Prometheus & Grafana)
* Orquestração de contêineres utilizando **Docker Compose**.
* Coleta de métricas do sistema operacional com **Node Exporter**.
* Dashboard no Grafana para monitoramento em tempo real de uso de CPU, RAM e I/O de disco.

### 5. 🐙 Controle de Versão e CI/CD
* Inicialização e estruturação do repositório Git com `.gitignore` para ambientes virtuais (`.vagrant/`).
* Publicação do código no GitHub com boas práticas de commits.

---

## 🛠️ Tecnologias Utilizadas

| Categoria | Tecnologias |
| :--- | :--- |
| **Linguagem & Scripts** | Python 3.11, Bash, Batch Script (`.bat`) |
| **Conteinerização** | Docker, Docker Compose |
| **Infraestrutura como Código** | Vagrant, VirtualBox |
| **Observabilidade** | Prometheus, Grafana, Node Exporter |
| **Versionamento** | Git, GitHub |

---

## 🚀 Como Executar o Projeto Localmente

### 1. Clonar o repositório
bash
git clone [https://github.com/callermaia/lab-devops-iac.git](https://github.com/callermaia/lab-devops-iac.git)
cd lab-devops-iac

2. Executar o script de verificação nativo (Windows)
Bash
python check_sistema.py

3. Subir a VM de observabilidade com Vagrant 
Bash
vagrant up
vagrant ssh

📝 Lições Aprendidas
Isolamento de Kernel: Containers rodando sob o WSL2 reportam o uso de memória e CPU do kernel da máquina virtual Linux, e não do Host Windows.

Coleta Direta: Para monitorar o Host Windows com precisão absoluta, o script deve rodar nativamente na máquina física ou expor métricas via agentes de rede.
