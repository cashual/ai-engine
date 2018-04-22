FROM ocd-rasa-nlu

WORKDIR /app

ADD domain.yml /app
ADD train_online.py /app
ADD ocd-guy-stories.md /app/data/ocd-guy-stories.md

RUN pip3 install rasa_core

RUN cd /app && python3 -m rasa_nlu.train -c nlu_model_config.json --fixed_model_name current && python3 -m rasa_core.train -s data/ocd-guy-stories.md -d domain.yml -o data/models/dialogue --epochs 300

EXPOSE 5005

CMD [ "python3", "-m", "rasa_core.server", "-d", "data/models/dialogue", "-u", "data/models/nlu/default/current", "-o", "out.log", "--cors", "'*'" ]