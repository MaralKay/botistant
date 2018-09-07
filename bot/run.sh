#!/bin/sh
# train the bot with the configurations of domain and nlu, and then start running it

python -m rasa_nlu.train -c nlu_config.yml --data nlu.md -o models --fixed_model_name nlu --project current --verbose
python -m rasa_core.run -d models/dialogue -u models/current/nlu
