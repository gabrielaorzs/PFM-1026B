INSERT INTO tb_conversaciones_chatbot_temp
SELECT * FROM tb_conversaciones_chatbot;

UPDATE tb_conversaciones_chatbot_temp
SET consulta = LOWER(consulta),
    respuesta_bot = LOWER(respuesta_bot);

UPDATE tb_conversaciones_chatbot_temp
SET consulta = REGEXP_REPLACE(consulta, '[[:punct:]]', ''),
    respuesta_bot = REGEXP_REPLACE(respuesta_bot, '[[:punct:]]', '');
