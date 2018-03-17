Ai Engine - Chatbot Machine Language
====================================

Chatbot uses RASA framework for language understanding

RASA-NLU Setup
==============

- Install Python
- Install win32api: pip install pypiwin32
- Install Microsoft Visual C++ 9.0 is required. Get it from http://aka.ms/vcpython27
- Open a command line (Run CMD as Administrator in Windows)
- Install RASA-NLU: pip install rasa_nlu[spacy]
- Install module: python -m spacy download en_core_web_md
- Link module: python -m spacy link en_core_web_md en

Train:
------

python -m rasa_nlu.train -c config/config_spacy.json


Start Server
------------

python -m rasa_nlu.server -c config/config_spacy.json


More Info
---------

See:

https://nlu.rasa.ai
