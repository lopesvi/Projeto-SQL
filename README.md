Tabelas de Carga:

CUSTOMERS

GEOLOCATION

ORDER ITEMS

ORDER PAYMENTS

ORDERS

PRODUCTS

SELLER

PRODUCT CATEGORY NAME


Tabelas de Produção: Cada tabela de carga tem uma tabela de produção correspondente:

-TB_ACT_OLIST_CUSTOMERS

-TB_ACT_OLIST_GEOLOCATION

TB_ACT_OLIST_ORDER_ITEMS

TB_ACT_OLIST_ORDER_PAYMENTS

TB_ACT_OLIST_ORDERS

TB_ACT_OLIST_PRODUCTS

TB_ACT_OLIST_SELLER

TB_ACT_OLIST_PRODUCT_CATEGORY_NAME

VIEW de Relatório:

VW_PEDIDOS_POR_CLIENTE: Esta VIEW combina dados das tabelas de produção TB_ACT_OLIST_ORDERS e TB_ACT_OLIST_CUSTOMERS para criar um relatório detalhado de pedidos por cliente.
Objetivo

O objetivo deste projeto é fornecer uma estrutura robusta para a análise de dados de produção, permitindo a geração de relatórios precisos e detalhados. A estrutura fixa das tabelas de produção garante a estabilidade e consistência dos dados, enquanto as VIEWS facilitam a criação de relatórios.

Funcionalidades
Importação de Dados: Dados de diferentes fontes são importados para as tabelas de carga.
Processamento e Estruturação: Dados das tabelas de carga são processados e inseridos nas tabelas de produção correspondentes.
Geração de Relatórios: Utilização de VIEWS para transformar dados brutos em relatórios detalhados.

Exemplo de INNER JOIN e VIEW:


-- Exemplo de SELECT na tabela de produção de clientes

SELECT * FROM [dbo].[TB_ACT_OLIST_CUSTOMERS]

-- Criação da VIEW para relatórios de pedidos por cliente


CREATE VIEW VW_PEDIDOS_POR_CLIENTE AS

SELECT O.*, C.CUSTOMER_CITY, C.CUSTOMER_STATE, C.CUSTOMER_ZIP_CODE_PREFIX

FROM [dbo].[TB_ACT_OLIST_ORDERS] AS O

INNER JOIN [TB_ACT_OLIST_CUSTOMERS] AS C

ON O.CUSTOMER_ID = C.CUSTOMER_ID

-- Exemplo de SELECT na VIEW criada

SELECT * FROM VW_PEDIDOS_POR_CLIENTE


Estrutura de Arquivos
create_load_tables.sql: Script para criar as tabelas de carga.

create_production_tables.sql: Script para criar as tabelas de produção.

create_views.sql: Script para criar as VIEWS de relatórios.

load_data.sql: Exemplos de scripts para carregar dados nas tabelas de carga.

process_data.sql: Exemplos de scripts para processar e mover dados para as tabelas de produção.

query_reports.sql: Exemplos de consultas para gerar relatórios a partir das VIEWS.

Contribuição
Contribuições são bem-vindas! Se você quiser contribuir com melhorias ou correções, sinta-se à vontade para fazer um fork do repositório e enviar um pull request.
