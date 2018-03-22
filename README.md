Ai Engine - Chatbot Machine Language
====================================

Chatbot uses RASA framework for language understanding and dialog processing

```
ocdguybot/
+-- data/
Š   +-- ocd-guy-stories.md            # dialogue training data
Š   +-- ocd-guy-nlu.md                # nlu training data
+-- domain.yml                        # dialogue configuration
+-- nlu_model_config.json             # nlu configuration
```

RASA Setup
==========

- Install Python
- Install Microsoft Visual C++ 9.0 is required. Get it from http://aka.ms/vcpython27
- Open a command line (Run CMD as Administrator in Windows)
- Install win32api: pip install pypiwin32
- Install tensorflow: pip install --upgrade https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-1.0.1-py2-none-any.whl
- Install RASA-NLU: pip install rasa_nlu[spacy]
- Install module: python -m spacy download en_core_web_md
- Link module: python -m spacy link en_core_web_md en
- Install RASA-CORE: - pip install rasa_core

Train:
------

python -m rasa_nlu.train -c nlu_model_config.json --fixed_model_name current
python -m rasa_core.train -s data/ocd-guy-stories.md -d domain.yml -o models/dialogue --epochs 300


Run RASA-CORE in command line
-----------------------------

python -m rasa_core.run -d models/dialogue -u models/default/current


Start RASA-NLU Server (if you only want Intent services)
--------------------------------------------------------

python -m rasa_nlu.server -c config/config_spacy.json


Start RASA-CORE Server
----------------------

python -m rasa_core.server -d models/dialogue -u models/nlu/default/current -o out.log --cors '*'



More Info
---------

See:

https://nlu.rasa.ai
