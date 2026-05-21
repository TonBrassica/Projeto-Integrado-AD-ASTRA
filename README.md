# Sistema de Gestão de Base de Dados Imobiliária (AD-ASTRA)

[![MySQL](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)
[![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)](https://ubuntu.com/)
[![DataGrip](https://img.shields.io/badge/DataGrip-000000?style=for-the-badge&logo=datagrip&logoColor=white)](https://www.jetbrains.com/datagrip/)

Este repositório aloja o modelo físico e os scripts de automação de uma base de dados relacional (MySQL) desenvolvida para o ecossistema de uma imobiliária moderna. O sistema cobre desde o registo de utilizadores e propriedades até ao agendamento de visitas e fluxos de pagamento.

---

## Contexto e Regras de Negócio

O objetivo principal deste projeto foi desenhar uma arquitetura de dados íntegra, performativa e normalizada que responda às seguintes dores do negócio imobiliário:
* **Centralização de Identidades:** Gestão unificada de utilizadores, distinguindo os seus papéis específicos no sistema sem duplicar dados.
* **Fluxo de Visitas:** Garantir que um agendamento associe obrigatoriamente um potencial inquilino/comprador, um corretor credenciado e um imóvel disponível.
* **Rastreabilidade Financeira:** Controlar o histórico de pagamentos de taxas ou cauções vinculados aos agendamentos ou contratos.

---

## Evolução da Modelagem (Decisões de Engenharia)

O projeto passou por um processo de refatoração crítica para atingir a **Terceira Forma Normal (3FN)** e mitigar redundâncias estruturais:

1. **Implementação de Especialização (Herança):** A tabela genérica `Usuario` continha atributos nulos (como o campo `creci`) quando o registo pertencia a um cliente comum. A estrutura foi dividida utilizando uma relação $1:1$ com tabelas especializadas (`Corretor` e `Locatario`).
2. **Consistência no Agendamento:** A tabela `Agendamento` foi normalizada para conter chaves estrangeiras (`FK`) distintas para o cliente (`id_locatario`) e para o funcionário (`id_corretor`), impedindo que o registo ficasse semanticamente incompleto.

---

## Estrutura do Repositório

```text
├── 01_estrutura/
│   └── 01_schema_criacao.sql       # Script DDL (Create tables, Constraints, FKs)
├── 02_dados/
│   └── 02_povoamento_testes.sql    # Script DML (Carga de dados simulados/Seed Data)
├── 03_consultas/
│   └── 03_relatorios_gerenciais.sql# Queries OLAP, JOINs complexos e Views de BI
└── README.md                       # Documentação principal do projeto
