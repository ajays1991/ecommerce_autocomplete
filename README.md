# Ecommerce autocomplete using elasticsearch

### Installing Elasticsearch
Install elasticsearch following this link https://www.elastic.co/guide/en/elasticsearch/reference/6.0/install-elasticsearch.html.

Note: Use elasticsearch 6 as chewy support only till elasticsearch 6. https://github.com/toptal/chewy

### Database setup
Run the following commands to setup db and import data to elasticsearch

```
rake db:create

rake db:migrate

rake db:seed

rake chewy:reset

```

### Starts Rails server

start rails server on local machine

`rails s`

navigate to http://localhost:3000
