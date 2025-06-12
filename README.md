![CI Pipeline](https://github.com/VHWatanabe/appmonitor-pipeline/actions/workflows/ci.yml/badge.svg)

# AppMonitor Pipeline

Projeto simulado para práticas de CI/CD com GitHub Actions, com foco em scripts de monitoração de aplicações web.

## Git na Entrega Contínua

O Git é uma ferramenta fundamental no processo de Entrega Contínua (CD). Ele permite controlar versões do código-fonte e facilitar a colaboração entre desenvolvedores.

### Branches

Branches permitem o desenvolvimento paralelo de funcionalidades, correções e melhorias. A branch `ci/setup` é usada aqui para estruturar o início do projeto.

### Tags

Tags marcam pontos específicos no histórico do projeto, como versões estáveis (ex: `v0.1.0`). São úteis para identificar releases e facilitar o deploy.

---

## Estrutura Inicial

- `status-check.sh`: Script de exemplo para verificação do status HTTP de uma URL.

---

## Variáveis, Secrets e Contextos no GitHub Actions

### `env`
São variáveis de ambiente definidas diretamente dentro do workflow, válidas apenas para o job ou step onde estão declaradas.

### `vars`
São variáveis definidas na aba *Actions > Variables* do repositório, usadas para armazenar valores de configuração que não são sensíveis. Acessadas com `${{ vars.NOME }}`.

### `secrets`
São informações sensíveis como chaves de API, tokens ou senhas. Definidas em *Actions > Secrets* e acessadas com `${{ secrets.NOME }}`. O GitHub oculta automaticamente seu valor nos logs de execução.

---

## Logs, Summaries e Debug no GitHub Actions

- **Logs de debug** (`ACTIONS_STEP_DEBUG=true`) mostram informações detalhadas durante a execução dos steps, facilitando encontrar a causa de falhas ou comportamentos inesperados.
- **Job summaries** são blocos de texto que aparecem no final da execução de um job, resumindo informações importantes como ambiente, status dos passos e links para artefatos.
- **Mensagens personalizadas** usando `::warning::` e `::error::` permitem destacar avisos ou erros diretamente nos logs, ajudando a chamar atenção para pontos críticos da pipeline.

Essas ferramentas combinadas melhoram muito o diagnóstico e a manutenção dos pipelines de CI/CD.
