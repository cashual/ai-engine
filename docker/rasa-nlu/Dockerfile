FROM tensorflow/tensorflow:latest-py3

WORKDIR /app

ADD nlu_model_config.json /app

ADD ocd-guy-rasa.json /app/data/ocd-guy-nlu.md

RUN pip3 install rasa_nlu[spacy]

RUN python3 -m spacy download en_core_web_md

RUN python3 -m spacy link en_core_web_md en

RUN pip3 install duckling

RUN pip3 install rasa_core

# Install Java.
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN rm -rf /etc/service/sshd /etc/my_init.d/00_regen_ssh_host_keys.sh

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


RUN cd /app && python3 -m rasa_nlu.train -c nlu_model_config.json

EXPOSE 5000

CMD [ "python3", "-m", "rasa_nlu.server", "-c", "nlu_model_config.json" ]