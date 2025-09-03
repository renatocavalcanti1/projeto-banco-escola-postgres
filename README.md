# Projeto de Banco de Dados - Escola (PostgreSQL)

Este repositório contém a modelagem e implementação de um banco de dados de **escola**, desenvolvido em **PostgreSQL**. Inclui tabelas, sequências, chaves primárias e estrangeiras, além de registros de exemplo.

---

## Estrutura do Banco

### Tabelas principais

1. **aluno**
   - `id_aluno` (PK)
   - `nome`
   - `idade`
   - `email`
   
2. **curso**
   - `id_curso` (PK)
   - `nome_curso`
   - `descricao`
   - `carga_horaria`
   
3. **modulo**
   - `id_modulo` (PK)
   - `id_curso` (FK → curso)
   - `nome_modulo`
   - `descricao_modulo`
   
4. **inscricao**
   - `id_inscricao` (PK)
   - `id_aluno` (FK → aluno)
   - `id_curso` (FK → curso)
   - `data_inscricao`

---

## Exemplo de Dados

- **Alunos:** Roberval Silva, Sebastião Cabral, Maria Silva  
- **Cursos:** História, Filosofia, Sociologia  
- **Módulos:** História Antiga, Idade Média, Filosofia Antiga, Ética, Fundamentos da Sociologia, Estratificação Social  
- **Inscrições:** Relacionam alunos com cursos em datas específicas  

---

## Como usar

1. Certifique-se de ter o **PostgreSQL** instalado.  
2. Crie um banco novo no PostgreSQL, por exemplo:

```sql
CREATE DATABASE escola;
Execute o script SQL do repositório para criar tabelas e inserir os dados:

bash
Copiar código
psql -U seu_usuario -d escola -f meu_banco.sql
seu_usuario → usuário do PostgreSQL com permissão para criar tabelas

escola → nome do banco que você criou

meu_banco.sql → arquivo do backup contido neste repositório

Pronto! O banco estará disponível com todas as tabelas e registros de exemplo.

Objetivo do Projeto
Demonstrar habilidades de modelagem de banco de dados relacional, incluindo:

Criação de tabelas com chaves primárias e estrangeiras

Sequências e auto incremento

Inserção de dados de exemplo

Relacionamentos entre tabelas (aluno → inscrição → curso → módulo)

