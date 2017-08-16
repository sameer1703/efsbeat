# Welcome to efsbeat 5.2.1

Sends events to Elasticsearch or Logstash

## Getting Started

To get started with efsbeat, you need to set up Elasticsearch on your localhost first. After that, start efsbeat with:

     ./efsbeat  -c efsbeat.yml -e

This will start the beat and send the data to your Elasticsearch instance. To load the dashboards for efsbeat into Kibana, run:

    ./scripts/import_dashboards

For further steps visit the [Getting started](https://www.elastic.co/guide/en/beats/efsbeat/5.2/efsbeat-getting-started.html) guide.

## Documentation

Visit [Elastic.co Docs](https://www.elastic.co/guide/en/beats/efsbeat/5.2/index.html) for the full efsbeat documentation.

## Release notes

https://www.elastic.co/guide/en/beats/libbeat/5.2/release-notes-5.2.1.html
