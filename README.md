Ai Engine - Chatbot Machine Language
====================================

Chatbot uses RASA framework for language understanding and dialog processing.

RASA-NLU interprets natural languange text and extracts intents and entities.

RASA-CORE uses RASA-NLU and adds dialogue processing.

This project assembles one docker image which can run three different programs:
- RASA-NLU server on port 5000
- RASA Train Online - trains rasa-core dialog Engine
- RASA-CORE server on port 5005

A volume is created to share data between container instances and improve the
dialogue throughout the time.

```
|
 -- ocd-guy-nlu.md        (intents and entities for rasa nlu training)
|
 -- ocd-guy-stories       (dialog examples used by rasa core)
```


Setup
-----

_Build the base system and created the shared volume_

```bash
cd rasa-base
./build.#!/bin/sh
./createvolume.#!/bin/sh
```

_Build the rasa-ai image with rasa-core and rasa-nlu binaries_

```bash
cd rasa-ai
./build.#!/bin/sh
```

Running
-------

0- BASH

`./dockerbash` starts a bash shell in the container with access to the shared volume. It is useful for editing files or retrieving modified files before launching the servers or after running the online training.

1- RASA-NLU

Edit the file `ocd-guy-nlu.md` if you want to modify NLU training data.

`./run-nlu.sh` starts the container and the rasa-nlu server listening on port 5000.

To access the server use the rest endpoints (see https://nlu.rasa.com/http.html) at localhost:5000


For more information see https://nlu.rasa.com/tutorial.html


2- RASA-CORE

Edit the file `domain.yml` if you want to change the dialog processor domain.

Edit the file `ocd-guy-stories.md` if you want to change the storied that rasa core seerver uses for dialog processing.

`./run-training` starts the online training of rasa-core.

`./run-core` start the rasa-core server on port 5005.

To access the server use the rest endpoints (see https://core.rasa.com/http.html) at localhost:5005


For more information see https://core.rasa.com/tutorial_basics.html



More Info
=========

See:

https://nlu.rasa.ai

https://core.rasa.com
