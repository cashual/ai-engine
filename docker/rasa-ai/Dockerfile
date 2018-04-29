FROM ocd-rasa-base

WORKDIR /app

COPY app/ /app/

RUN pip3 install rasa_nlu[spacy] && python3 -m spacy download en_core_web_md && python3 -m spacy link en_core_web_md en

RUN pip3 install duckling && pip3 install rasa_core

RUN python3 -m rasa_nlu.train -c nlu_model_config.json --fixed_model_name current

RUN python3 -m rasa_nlu.train -c nlu_model_config.json --fixed_model_name current && python3 -m rasa_core.train -s data/ocd-guy-stories.md -d domain.yml -o data/models/dialogue --epochs 300

EXPOSE 5000
EXPOSE 5005
