---
section: 11
chapter: 64
sort-key: 11-64
title: Informática Clínica
description: O Capítulo 64 aprofunda-se em um conceito de informática clínica cada vez mais importante e em como se envolver com ele e aplicá-lo na urologia pediátrica.
thumbnail: 11-64_clinical-informatics-pt.png
authors:
  -
    author-id: 4
  -
    author-id: 9
layout: chapter
lang: pt
breadcrumbs:
  - 
    title: Início
    permalink: /
  - 
    title: Livro
    permalink: /book/
toc: true
js: /assets/js/pages/chapter.js
review-formatting-complete: 2025-09-21 KR
page_id: 11-64_clinical-informatics
---

## Introdução

Cada vez mais, há amplo reconhecimento de que a experiência clínica e a experiência em tecnologias de informação nem sempre se sobrepõem, especialmente à medida que estes domínios separados têm seguido o caminho da subespecialização. Alguma vez teve dificuldade em transmitir à equipa de suporte o que não está a funcionar no registo médico eletrónico (EMR)? Alguma vez uma "atualização" do EMR lhe pareceu um "retrocesso" no fluxo de trabalho clínico? Esta é uma lacuna vivida pela maioria das organizações de saúde, e cada vez mais organizações estão a criar programas de informática clínica para colmatar essa lacuna.
{:.drop-caps}

**Um especialista em informática clínica (às vezes referido como informaticista), é um profissional de saúde com conhecimento e formação especializados em sistemas de informação clínica, geralmente com foco no EMR.** A informática clínica se expandiu na última década, tornando-se uma especialidade própria, com formação e certificação por conselho. Algumas especialidades têm recorrido a tais especialistas há muito mais tempo do que a urologia ou a cirurgia, incluindo patologia (interfaces de sistemas laboratoriais) e radiologia (interfaces PACS). Mas, à medida que os EMRs avançam e mais dos nossos fluxos de trabalho são digitalizados, até mesmo os cirurgiões são afetados pela lacuna mencionada, e torna-se cada vez mais imperativo que profissionais cirúrgicos com formação em EMR estejam à mesa para decisões que afetam nossa prática.

A informática clínica também pode ser definida pelo que não é: médicos usando um computador, médicos que utilizam software clínico (em qualquer nível de competência) ou médicos que realizam análise de dados ou pesquisa. Historicamente, o jovem campo da informática clínica tem tido dificuldade em transmitir o que fazemos, e declarar o que não somos é um exercício útil para enfatizar a definição. [Figura 1](#figure-1){:.figure-link} demonstra parte da sobreposição e das funções da informática clínica com o campo da análise de dados. De modo semelhante, [Figura 2](#figure-2){:.figure-link} mostra como a sobreposição entre o sistema de saúde, os cuidados clínicos e a tecnologia e os sistemas de informação leva a diferentes domínios de competência, com a informática clínica no centro.

![Figura 1]({{ site.url }}{{ site.baseurl }}/assets/figures/figure-64-1.svg){:.float-start .img-fluid}  
**Figura 1**{:#figure-1}{:.figure-number} A informática clínica, como domínio, tem alguma sobreposição e relação com a análise de dados (que, em muitos sistemas de saúde, é incipiente), mas cada uma possui elementos exclusivos distintos da outra.

**Figura 2**{:#figure-2}{:.figure-number} Domínios sobrepostos em e ao redor da assistência clínica diferenciam a
![Figura 2]({{ site.url }}{{ site.baseurl }}/assets/figures/figure-64-2.svg){:.float-start .img-fluid}   informática clínica de domínios tais como melhoria da qualidade e segurança do paciente e a central de suporte de tecnologia da informação. A informática clínica situa-se na interseção dos três domínios maiores, a assistência clínica, o sistema de saúde e a tecnologia da informação e comunicação.

## Definindo o EMR---O que é

Há vários termos usados para se referir aos registros médicos informatizados, incluindo o do título desta revisão, registro médico eletrônico (EMR). Os EMR podem consistir em um único aplicativo de grande porte (por exemplo, Epic, Cerner ou AllScripts) licenciado e mantido por uma organização prestadora de cuidados de saúde, como um hospital ou uma clínica privada, ou também podem consistir em vários aplicativos separados. O termo registro eletrônico de saúde (EHR) é ocasionalmente usado como sinônimo de EMR, mas é definido como um conceito distinto e separado de um portal voltado ao paciente que permite acesso aos registros de múltiplas organizações prestadoras de cuidados de saúde e unifica as informações em um único local. [Tabela 1](#table-1){:.table-link} apresenta uma comparação entre EMR, EHR e intercâmbios de informações de saúde (HIE), que também estão se tornando cada vez mais importantes em nível regional para auxiliar na troca eletrônica de informações segura, eficiente e tempestiva entre organizações.

Além de definir o EMR, também existem medidas, definidas pela HIMSS, do quão avançadas são as capacidades e as integrações dentro do EMR.{% cite anon-a --file 11-64 %} Ao definir esses estágios, as organizações podem comparar suas capacidades (funcionalidades e integrações que impactam a segurança do paciente, a segurança dos dados e a eficiência/satisfação dos profissionais de saúde) entre si. A definição de cada estágio{% cite anon-a rule2021a maguire2020a kuhn2015a kahn2018a downing2018a rosenbloom2011a --file 11-64 %} inclui as capacidades daquele estágio mais todas as dos estágios inferiores. O estágio mais avançado é o estágio 7 da HIMSS. Eles são mostrados na [Tabela 2](#table-2){:.table-link}.

**Tabela 1**{:#table-1}{:.table-number} Diferenças entre um Prontuário Médico Eletrônico (EMR) e um Registro Eletrônico de Saúde (EHR) e o Intercâmbio de Informações de Saúde (HIE). Os EMRs podem consistir em uma única aplicação de grande porte (por exemplo, Epic ou Cerner) de propriedade e mantida por uma organização de prestação de cuidados de saúde, como um hospital, sistema hospitalar ou clínica privada, ou também podem consistir em múltiplas aplicações. Um HIE, por sua vez, auxilia o compartilhamento de informações entre EMRs utilizando terminologias padronizadas (por exemplo, ICD-10 e SNOMED para diagnósticos, CPT para procedimentos, códigos LOINC para exames laboratoriais, etc). Os HIEs são cada vez mais comuns. Exemplos de um EHR incluem Apple Health ou Google Health, que podem coletar e integrar informações com segurança de múltiplas entidades.

| EMR                                                                  | EHR                                                                                  | HIE                                                                                                                                                                                               |
|----------------------------------------------------------------------|--------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| De propriedade de organização prestadora de cuidados de saúde (hospital, sistema hospitalar, clínica) | De propriedade do paciente ou de parte interessada                                   | Entidade independente com acordos com múltiplas organizações para compartilhar automaticamente informações padronizadas (por exemplo, medicações, imunizações, notas, sumários de alta, exames laboratoriais, entre outras) |
| Contém o prontuário médico legal de uma única organização            | Subconjunto de registros referentes a um único paciente que abrange múltiplas organizações | Facilita a troca de informações com as organizações-membro                                                                                                                                       |
| Uma única organização                                                | Pode abranger áreas locais, regionais e nacionais                                    | Pode abranger áreas locais, regionais e nacionais (por exemplo, CORHIO HIE no estado do Colorado)                                                                                                 |
| Aplicações integradas ou múltiplas                                   | Interface interativa (portal da web ou aplicativo móvel, tipicamente utilizado por pacientes) | Interface interativa (portal da web ou aplicativo móvel, tipicamente utilizada por prestadores dentro das organizações-membro) ou pode integrar/enviar/receber dados diretamente no EMR da organização               |

**Tabela 2**{:#table-2}{:.table-number} Estágios HIMSS das capacidades do EMR. O Estágio 7 é o mais avançado e inclui todas as capacidades mencionadas *mais* todas as capacidades e integrações listadas para os estágios 1--6. Cada estágio inclui todas as capacidades desse estágio e de todos os estágios inferiores.

| Estágio HIMSS | Capacidades                                                                                                                                                              |
|-------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Estágio 7     | EMR completo; transações do documento de continuidade do cuidado (CCD) para compartilhar dados; data warehouse; continuidade de dados com departamento de emergência (ED), ambulatorial, atendimento externo (OP) |
| Estágio 6     | Documentação médica (modelos estruturados), sistemas completos de suporte à decisão clínica (CDSS) (variação e conformidade), R-PACS completo                                      |
| Estágio 5     | Administração de medicamentos em circuito fechado                                                                                                                                     |
| Estágio 4     | Entrada de ordens clínicas por médicos (CPOE), suporte à decisão clínica (protocolos clínicos)                                                                                     |
| Estágio 3     | Documentação de enfermagem/clínica (folhas de fluxo), CDSS (verificação de erros), PACS disponível fora da radiologia                                                                     |
| Estágio 2     | Repositório de dados clínicos (CDR), vocabulário médico controlado, suporte à decisão clínica, pode ter digitalização de documentos; com capacidade de intercâmbio de informações de saúde (HIE)            |
| Estágio 1     | Todas as três áreas auxiliares (SI de laboratório, SI de radiologia, SI de farmácia) instaladas                                                                                                |
| Estágio 0     | Todas as três áreas auxiliares (SI de laboratório, SI de radiologia, SI de farmácia) não instaladas                                                                                            |

## Exemplos de Informática Clínica

### Estratégias de Documentação e Padronização

A era dos EMRs tornou cada vez mais simples armazenar informações do paciente, como notas, exames laboratoriais, resultados de radiologia e mais. Isso também levou a um aumento dramático da extensão da documentação, pois os EMRs tornam muito fácil importar essas informações em uma nota.{% cite rule2021a maguire2020a kuhn2015a kahn2018a --file 11-64 %} A consequência não intencional disso é a tendência de os clínicos incluírem informações redundantes literalmente (por exemplo, todo o laudo de ultrassonografia renal e vesical) em suas notas ambulatoriais e evoluções de pacientes internados, em vez de resumirem e registrarem a relevância desse resultado---levando a uma duplicação da extensão das notas ambulatoriais desde 2009.{% cite downing2018a --file 11-64 %}

Os especialistas em informática clínica estão bem posicionados para impactar positivamente isso, incentivando o uso e criando modelos de documentação dentro do EMR. Por que isso é importante? Com muita frequência, os clínicos repetem tarefas rotineiras, vez após vez, sem perceber ou entender que o EMR pode automatizar tarefas e atividades. Um ótimo exemplo disso é quando pacientes com problemas comuns de urologia pediátrica são atendidos no ambulatório (por exemplo, hipospádia, hidronefrose, refluxo vesicoureteral, disfunção intestinal e vesical). Se você se vê tendo a mesma conversa com pacientes e familiares e apresentando opções semelhantes, um modelo de nota clínica pode transformar 10 minutos "recriando a roda" para documentar essa conversa em um exercício de 30--60 segundos de preenchimento de detalhes-chave em um modelo de nota clínica que fica salvo no EMR.

[Tabela 3](#table-3){:.table-link} apresenta uma lista de fenótipos ambulatoriais para os quais há modelos de nota para novos pacientes ***compartilhados*** na minha organização. Observe a palavra ***compartilhado***: Nosso grupo optou por criar esse recurso compartilhado para todos os profissionais. O benefício do compartilhamento é que padronizamos a documentação de \~95% dos novos pacientes, que se enquadram nesta lista, e todos os profissionais se beneficiam à medida que os problemas são corrigidos e o modelo é aprimorado.

**Tabela 3**{:#table-3}{:.table-number} Lista de modelos de notas compartilhadas para novos pacientes no Children's Hospital Colorado em 2023.

| Modelos para novos pacientes      |
|-----------------------------------|
| Anorretal                         |
| Diferenças do desenvolvimento sexual |
| Micção disfuncional               |
| Disúria                           |
| Genérico                          |
| Hematúria                         |
| Hérnia / hidrocele                |
| Hidronefrose                      |
| Hipospádia                        |
| Aderências labiais                |
| Fimose no recém-nascido           |
| Enurese noturna                   |
| Pênis                             |
| Consulta pré-natal                |
| Dor escrotal / massa / inchaço    |
| Defeito espinhal                  |
| Cálculos                          |
| Massa testicular / microlitíase   |
| Testículo não descido             |
| Alteração do úraco                |
| ITU                               |
| Varicocele / espermatocele        |
| Refluxo vesicoureteral            |

### Criação de Dados Discretos

Uma enorme vantagem que o EMR tem em relação aos registros em papel reside nos dados estruturados, ou discretos. Pode-se pensar em dados discretos como informações que foram decompostas em seus elementos básicos, rotuladas e armazenadas de modo que possam ser facilmente acessadas. No EMR, grande parte dos dados importantes para a documentação clínica já foi capturada dessa forma---datas, nomes, sinais vitais, valores laboratoriais, diagnósticos etc. Tais dados podem facilitar o cuidado direto ao paciente e podem ser aproveitados para usos secundários, incluindo o acompanhamento de desfechos e a pesquisa clínica.

Em geral, é simples incorporar dados discretos às notas. Ao fazê-lo, os médicos devem estar atentos para evitar o inchaço das notas e estruturar seus modelos para focar exclusivamente nos dados pertinentes. **Dados discretos dentro de um EMR são altamente granulares e, com personalização suficiente, elementos de dados discretos podem ser incorporados a uma nota sem sacrificar a legibilidade.** Por exemplo, em vez de importar um conjunto completo de tabelas laboratoriais recentes, pode-se criar um modelo de frase para incluir apenas o valor de creatinina mais recente e a data de coleta.{% cite rosenbloom2011a --file 11-64 %}

### Suporte à Decisão Clínica

O suporte à decisão clínica (CDS) é definido como um "processo para aprimorar decisões e ações relacionadas à saúde com conhecimento clínico pertinente e organizado e informações do paciente para melhorar os cuidados de saúde e a prestação de cuidados de saúde."{% cite osheroff-a --file 11-64 %} Dados do EMR de um paciente podem ser utilizados para recomendar uma ação específica ou destacar informações importantes. Alertas pop-up são uma forma comum de CDS. [Tabela 4](#table-4){:.table-link} lista tipos, ferramentas e exemplos comuns de CDS na urologia pediátrica.

**Tabela 4**{:#table-4}{:.table-number} Exemplos de suporte à decisão clínica (CDS) em urologia pediátrica.

| Category                     | Tool                                                           | Benefit                                                             |                                                                        Example                                                                       |
|------------------------------|----------------------------------------------------------------|---------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------:|
| Entrada de dados             | Formulário inteligente (entrada de dados dinâmica e guiada)    | Solicitar dinamicamente a coleta de dados-chave, discretos          |                                Entrada de dados de urodinâmica pediátrica que se ajusta com base em procedimentos/condições documentadas            |
|                              | Conjuntos de solicitações                                      | Padronizar a entrada de solicitações para a condição do paciente    |                                       Conjunto de solicitações pós-operatórias de Recuperação Otimizada Após Cirurgia (ERAS) em pediatria           |
| Revisão de dados             | Painel de enfermagem ambulatorial de urologia pediátrica       | Centraliza as tarefas atribuídas e fornece avaliação global das atribuições | Lista ligações pós-operatórias pendentes, tarefas de educação do paciente, revisão do pool de mensagens da caixa de entrada e outras tarefas de cuidado indireto (p.ex., rastreamento de stents ureterais) |
| Avaliação e compreensão      | Botões informativos, links incorporados a materiais educacionais | Fornece uma oportunidade educacional imediata para o clínico        |                    Fornecer um link para diretrizes de profilaxia antibiótica cirúrgica específicas de urologia pediátrica dentro de um conjunto de solicitações                    |
| Acionado por tarefa do usuário | Alertas de fluxo de trabalho em linha                         | Úteis para notificações comuns                                      |                                                                Lembretes de vacinação contra a gripe                                                |
|                              | Alertas pop-up, interruptivos                                  | Úteis para mensagens importantes em que uma ação é altamente recomendada |                                         Sugestão de alteração de medicação porque a selecionada está indisponível                                   |
|                              | Notificação automatizada na caixa de entrada                   | Alertar os profissionais sobre a necessidade de uma ação pendente   |                                                   Lembrete para finalizar a documentação em um prontuário aberto                                     |

Os "cinco direitos" do CDS são importantes a considerar ao projetar e construir novas ferramentas: 1) informação correta, 2), pessoa certa, 3) formato de intervenção correto, 4) canal correto, 5) momento/fluxo de trabalho corretos ([Tabela 5](#table-5){:.table-link}).{% cite campbell2013a --file 11-64 %} Esses conceitos ajudam a direcionar a ferramenta para evitar interromper os membros errados da equipe nos momentos errados com intervenções que não são eficazes. Embora, historicamente, as ferramentas de CDS nem sempre tenham melhorado a eficiência, com o passar do tempo, suspeitamos que isso irá melhorar.{% cite bright2012a patterson2018a murphy2014a --file 11-64 %}

**Tabela 5**{:#table-5}{:.table-number} Cinco certos do CDS.

|           Certo           |                                                                                                                                Explicação                                                                                                                               |
|:-------------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|     Informação certa      |                                                             As informações devem ser apresentadas ao usuário, idealmente baseadas em evidências (p. ex., diretriz), evitando detalhes em excesso                                                             |
|       Pessoa certa        |                                           A assistência moderna à saúde é baseada em equipe e as intervenções devem ser direcionadas ao membro correto da equipe que pode agir                                           |
| Formato de intervenção certo |                                                                                 Deve-se selecionar uma ferramenta apropriada da Tabela 2 que auxilie o usuário                                                                                 |
|        Canal certo        | Crescente­mente, há interfaces de Prontuário Eletrônico (EMR) em todo o ambiente de assistência à saúde, uma sessão clínica em desktop, quadro tipo flight board da sala de cirurgia, dispositivos portáteis, listas de pacientes impressas e outros. Os projetistas de CDS devem selecionar um canal ideal para a intervenção. |
|  Momento/fluxo de trabalho certos  |                              As intervenções devem ser direcionadas e testadas em cenários do mundo real para garantir que sejam entregues no momento certo e no fluxo de trabalho certo para serem eficazes.                              |

## Treinamento em Informática

A informática clínica agora é ensinada por meio de programas de treinamento formais credenciados pela GME. A certificação pelo conselho está disponível para aqueles que desejam formalizar seu treinamento.{% cite lehmann2018a --file 11-64 %} Atualmente, existem duas vias disponíveis para a certificação pelo conselho (que é concedida após a aprovação em um exame escrito) por meio do Conselho Americano de Medicina Preventiva: 1) via de treinamento em informática clínica, na qual você pode fazer o exame do conselho após concluir um treinamento certificado de educação médica de pós-graduação (GME) (tipicamente de um ano), ou 2) via de prática, que permite àqueles com funções formais em sua organização com pelo menos 0.25 de equivalente a tempo integral dedicado. Esta última está disponível até 2023 (mas essa cláusula de direito adquirido foi prorrogada várias vezes, reconhecendo que nem todos os especialistas em informática clínica receberam treinamento formal, tendo, em vez disso, passado por treinamento em serviço). Mais informações sobre os requisitos de certificação pelo conselho em informática clínica estão disponíveis por meio do [Conselho Americano de Medicina Preventiva](https://www.theabpm.org/become-certified/subspecialties/clinical-informatics/).

## Governança do Prontuário Eletrônico

Considerando a complexidade do EMR, particularmente naqueles com funcionalidades integradas de ambulatório, laboratório, farmácia, internamento, serviço de urgência e bloco operatório, alterações ao EMR não podem ser efetuadas por uma pequena equipa sem o contributo da organização. Muitos hospitais e sistemas com EMRs de grande dimensão criaram comités de governação que discutem e decidem alterações significativas que possam afetar um amplo leque de utilizadores. Participar nesses comités pode proporcionar informações valiosas sobre novas funcionalidades de um EMR, pode ajudar a travar uma alteração que possa afetar negativamente a sua equipa, ou oferecer um espaço para discutir uma funcionalidade ou build que possa beneficiar o seu grupo ou organização.

## Liderança de Informática e Central de Suporte

Muitos médicos manifestaram frustração por não saberem por onde começar quando há problemas ou frustração com o estado atual das coisas. Conhecer a liderança de TI e de informática da sua organização é um bom ponto de partida. Muitas organizações (grandes e pequenas) têm alguém designado para liderar a equipe de TI (talvez chamado de Chief Information Officer ou CIO). Também é provável que haja alguém da área clínica designado para fazer a interface com o CIO e representar os clínicos. Em muitas organizações, essa é a função de um Chief Medical Informatics Officer ou CMIO. Saber quem são essas pessoas na sua organização é metade da batalha. Pedir que elas incluam pessoas designadas para representar seus interesses também é fundamental. Esses representantes designados devem ter interesse em informática (mesmo que não tenham formação formal) e estar autorizados a tomar decisões em nome do seu grupo, além de atuar como alguém que possa ajudar a facilitar mudanças, que se tornaram um novo normal constante na era do EMR.

Além de se engajar com as principais lideranças de sua organização de saúde, metade do desafio dos problemas com o PEP decorre de uma variação do conceito econômico de “tragédia dos comuns”. Isso ocorre quando um recurso compartilhado (neste caso, o PEP) é deixado para se deteriorar em decorrência da priorização do interesse próprio (leia-se: tempo precioso do clínico e a suposição de que outros estão lidando com o problema) em detrimento da atenção e do aprimoramento desse recurso. Mais diretamente, quando os usuários se deparam com resultados inesperados no PEP (erro novo e desconhecido ou funcionalidade com falha), observamos que a maioria contorna o problema em vez de relatá-lo à central de suporte. Como a equipe de TI não é composta por clínicos, muitos desses problemas no PEP podem passar despercebidos por dias ou mais porque ninguém os relata à central de suporte. **Não presuma que outras pessoas já relataram o problema.** Para lidar com o tempo que leva para ligar para a central de suporte, delegue a tarefa de notificar a central de suporte a um membro da equipe (por exemplo, um assistente médico), fornecendo-lhe informações suficientes para descrever o problema.

## Conclusão

A informática clínica é uma área de atuação cada vez mais importante para urologistas. Ter um membro da sua equipe ou grupo que possa representar seus interesses e buscar treinamento adicional para se tornar especialista nessa área tende a render dividendos em termos de eficiência e produtividade, além de minimizar o atrito entre sua equipe e o EMR.

## Pontos-chave
{:.key-points-head}

- A informática clínica é um campo novo que potencializa e faz a ponte entre a assistência clínica e os sistemas de tecnologia da informação (com foco particular no EMR)
- Os EMR têm integrado, cada vez mais, recursos para facilitar o acesso à radiologia, farmácia, suporte à decisão clínica, laboratório e funcionalidades de documentação que abrangem o atendimento ambulatorial, de internação, perioperatório e em departamento de emergência (nível 7 da HIMSS)
- A complexidade adicional exigiu que as organizações investissem em equipes de informática clínica para garantir uma utilização mais eficiente do EMR que espelhe os fluxos de trabalho e práticas existentes.
- Conhecer seus líderes de tecnologia da informação (CIO) e de informática (CMIO) é fundamental para garantir que seus interesses sejam representados.
- Ligue para a central de suporte quando encontrar algo inesperado. Não caia na tragédia dos comuns pensando que outra pessoa já relatou o problema.
{:.key-points-list}

## Referências

{% bibliography --file 11-64 %}

*[EMR]: prontuário eletrônico do paciente
*[PACS]: sistema de arquivamento e comunicação de imagens
*[EMRs]: prontuários eletrônicos do paciente
*[EHR]: registro eletrônico de saúde
*[HIE]: intercâmbio de informações de saúde
*[HIMSS]: Sociedade de Sistemas de Informação e Gestão em Saúde
*[ICD]: Classificação Internacional de Doenças
*[SNOMED]: Nomenclatura Sistemática da Medicina
*[CPT]: Terminologia de Procedimentos Correntes®
*[LOINC]: Identificadores, Nomes e Códigos de Observações Lógicas
*[HIEs]: intercâmbios de informações de saúde
*[CORHIO]: Organização Regional de Informações de Saúde do Colorado
*[CCD]: documento de continuidade do cuidado
*[ED]: departamento de emergência
*[OP]: paciente ambulatorial
*[CDSS]: sistemas de apoio à decisão clínica
*[CPOE]: entrada computadorizada de ordens médicas
*[CDR]: repositório de dados clínicos
*[IS]: sistemas de informação
*[UTI]: infecção do trato urinário
*[CDS]: apoio à decisão clínica
*[ERAS]: recuperação acelerada após cirurgia
*[GME]: educação médica de pós-graduação
*[IT]: tecnologia da informação
*[CIO]: diretor de informação
*[CMIO]: diretor médico de informática
