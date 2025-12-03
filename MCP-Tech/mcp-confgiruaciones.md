
# para tener mejor contexto con la agent AI
Imagen. En el tool del MCP Server Trigger deben hacer el cambio. En el video lo configura para select, se debe configurar para "Execute Query" y como query: {{ $fromAI("sql_query") }}. Aquí se podrían añadir otros postgres tools para que consulte las tablas existentes y sus definiciones.

También podrías modificar el prompt en el flow del MPC Client para que el AI Agent construya mejor la query a ejecutar, de momento le puse: Eres un agente que se conecta al MCP Server Trigger, y a las herramientas que tiene disponible. El nombre exacto del departamento o área están en las tablas específicas, el usuario podría usar nombres semejantes o una mezcla de minúsculas o mayúsculas. Responde siempre según la base de datos y herramientas que tengas conectado.
