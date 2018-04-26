FROM ocd-rasa-base

WORKDIR /app

ADD nlu_model_config.json /app

ADD ocd-guy-nlu.md /app/data/ocd-guy-nlu.md

RUN pip3 install rasa_nlu[spacy] && python3 -m spacy download en_core_web_md && python3 -m spacy link en_core_web_md en

RUN pip3 install duckling && pip3 install rasa_core

RUN cd /app && python3 -m rasa_nlu.train -c nlu_model_config.json --fixed_model_name current

EXPOSE 5000

CMD [ "python3", "-m", "rasa_nlu.server", "-c", "nlu_model_config.json" ]
