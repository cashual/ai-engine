FROM ocd-rasa-nlu

WORKDIR /app

ADD domain.yml /app

RUN pip3 install rasa_core

RUN cd /app && python3 -m rasa_nlu.train -c nlu_model_config.json --fixed_model_name current && python3 -m rasa_core.train -s data/ocd-guy-stories.md -d domain.yml -o models/dialogue --epochs 300

EXPOSE 5005

CMD [ "python3", "-m", "rasa_core.server", "-d", "models/dialogue", "-u", "models/nlu/default/current", "-o", "out.log", "--cors", "'*'" ]