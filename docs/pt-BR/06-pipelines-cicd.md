# Pipelines CI/CD

CI/CD significa:

Continuous Integration  
Continuous Delivery

Essas práticas permitem automatizar o ciclo de desenvolvimento e deploy de aplicações.

---

## Continuous Integration (CI)

Integração contínua consiste em:

- build automático
- execução de testes
- validação de código

---

## Continuous Delivery (CD)

Entrega contínua consiste em:

- deploy automatizado
- versionamento de releases
- distribuição de aplicações

---

## Ferramentas utilizadas

### GitHub Actions

Automação integrada ao GitHub.

https://github.com/features/actions

---

### GitLab CI

Plataforma CI/CD integrada ao GitLab.

https://docs.gitlab.com/ee/ci/

---

### Jenkins

Ferramenta open-source para automação de pipelines.

https://www.jenkins.io

---

## Pipeline típico

1. developer faz commit
2. pipeline CI executa build
3. testes são executados
4. imagem Docker é criada
5. deploy é realizado no Kubernetes

---
