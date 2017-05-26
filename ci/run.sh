curl -s https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.0.0/elasticsearch-2.0.0.tar.gz  > elasticsearch.tar.gz
tar -xzf elasticsearch.tar.gz
cd elasticsearch*/ && bin/elasticsearch &
sleep 10 && curl http://localhost:9200
bundle install
bundle exec rake vendor
bundle exec rspec
