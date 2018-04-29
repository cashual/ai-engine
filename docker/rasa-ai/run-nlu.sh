docker run -p 5000:5000 --rm --mount type=volume,source=ocd-rasa-data,target=/app/data ocd-rasa-ai python3 -m rasa_nlu.server -c nlu_model_config.json
