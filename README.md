# OpenTripPlanner for Singapore Public Transport

Forked from https://github.com/yinshanyang/isochronic-docker-opentripplanner

## How to setup

### Locally

1. Steps 2 - 4 are only if the data is outdated, otherwise you can go directly to step 5 as the `singapore-gtfs.zip` is already included

1. Download Singapore public transport GTFS [here](https://github.com/yinshanyang/singapore-gtfs)

1. Zip it into a zip file, name must contain `gtfs.zip`

1. Copy zip file into `/data` folder

1. `docker-compose up -d`

1. Access `http://localhost:5000` from browser

### Deploy to production

I use [fly.io](https://fly.io) so instructions will be only for them

1. Set up a new app, the minimum RAM is 1GB otherwise the instance will fail with Out Of Memory. I run it on a `shared-cpu-1x` VM with 1GB Memory. This will not fall under their free tier so check their pricing before deploying.

1. `flyctl launch`

1. That's it, you should be able to access the OpenTripPlanner instance using the hostname in the app overview
