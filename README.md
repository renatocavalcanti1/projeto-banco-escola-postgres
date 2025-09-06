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
