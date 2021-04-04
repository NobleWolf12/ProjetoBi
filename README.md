*A descrição do problema que vocês estão estudando;

Analisando os dados dos campeonatos do Brasileirão desde 2006, queremos identificar quais são os possíveis ganhadores do campeonato anualmente.

*As fontes de dados que utilizarão para a resolução dos problemas;

Utilizando uma API do srgoool.com.br, montamos uma aplicação em Python que realiza a coleta e a inserção no banco de dados

*Um modelo para a Staging Area / Data Lake com as fontes de dados selecionadas;

*As possíveis operações de limpeza / tratamento de dados necessárias para a modelagem do problema;

A API retorna as informações em formato JSON, sendo assim pouco ou nenhum tratamento foi necessário. 

*O mapeamento de indicadores (KPIs), dimensões e fatos do problema
![Captura de tela 2021-04-04 195653](https://user-images.githubusercontent.com/51687911/113523727-f3e21f80-957f-11eb-8171-ca16231dde76.png)


*O modelo de dados dimensional (estrela ou floco de neve) para o Data Warehouse (DW) do problema;

Modelo de dados Floco de Neve:

![Untitled Diagram (1)](https://user-images.githubusercontent.com/51687911/113523660-80401280-957f-11eb-9d9a-30bde2712a21.png)



*Transformações do PDI que esbocem o carregamento dos dados no DW;


