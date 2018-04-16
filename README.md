Ai Engine - Chatbot Machine Language
====================================

Chatbot uses RASA framework for language understanding and dialog processing.

RASA-NLU interprets natural languange text and extracts intents and entities.

RASA-CORE uses RASA-NLU and adds dialogue processing.

This project assembles two docker container images. One with RASA-NLU which can be used independently to extract intents and entities 
from text and another RASA-CORE wich builds on the first and adds dialog processing.


RASA-NLU
========

Provides RASA-NLU as an http server.

Location: ./docker/rasa-nlu

Docker image name: ocd-rasa-nlu

Preparing the trining data
--------------------------

Edit the file `ocd-guy-nlu.md`

For more information see https://nlu.rasa.com/tutorial.html


Building the docker image
-------------------------

Run the script `build.sh`

Running the docker container
----------------------------

Run the script `run.sh`


Accessing the RASA-NLU server
-----------------------------

Use the rest endpoints (see https://nlu.rasa.com/http.html) at localhost:5000



RASA-CORE
=========

Provides RASA-CORE as an http server.

Location: ./docker/rasa-core

Docker image name: ocd-rasa-core

Defining the Domain
-------------------

Edit the file `domain.yml`

For more information see https://core.rasa.com/tutorial_basics.html


Defining the user stories
-------------------------

Edit the file `ocd-guy-stories.md`

For more information see https://core.rasa.com/tutorial_basics.html


Building the docker image
-------------------------

Run the script `build.sh`

Running the docker container
----------------------------

Run the script `run.sh`


Accessing the RASA-CORE server
-----------------------------

Use the rest endpoints (see https://core.rasa.com/http.html) at localhost:5005



More Info
=========

See:

https://nlu.rasa.ai
