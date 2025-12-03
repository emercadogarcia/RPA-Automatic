# confgiruarcion para MCP para n8n
Resumen

Crear una solución efectiva para consultar bases de datos mediante lenguaje natural requiere seguir un proceso sencillo y claro. Se utilizan herramientas como Supabase para establecer y poblar bases de datos, y N8N para automatizar consultas y conexiones ahorrando tiempo en tareas repetitivas.

¿Cómo puedes crear y poblar bases de datos en Supabase?
Primero es necesario estructurar correctamente bases de datos en Supabase. Este paso inicial consiste en copiar y ejecutar consultas específicas desde la interfaz.

Accede al SQL editor en Supabase.
Ingresa scripts específicos para crear tablas relacionadas con departamentos, desempeño, niveles salariales, entre otras.
Ejecuta las consultas con el botón verde run y verifica la correcta creación.
Luego de contar con las tablas creadas, se procede a poblarlas mediante información predefinida, o dummy, empleando nuevamente consultas SQL:

Inserta datos en cada tabla, excepto inicialmente en la de empleados.
Posteriormente, pobla la tabla específica de empleados, crucial debido a que concentra toda información de otras tablas relacionadas.
¿Qué pasos seguir para integrar Supabase con N8N?
Conectar ambas plataformas es fundamental para aprovechar las consultas mediante lenguaje natural ofrecido por MCP Server y herramientas de automatización que N8N pone a disposición:

Configuración inicial en N8N mediante credenciales de Supabase
Creación de un nuevo flujo (workflow) en N8N seleccionando MCP server trigger y herramienta Postgres tool.
Definición de credenciales según parámetros provistos por SupaBase (database, usuario, password, host y puerto específico: 6543).
Aumento del límite de conexiones simultáneas (220) al haber más de 210 registros en la base.
Comprobación y activación del flujo en N8N
Para facilitar la automatización y agilizar las consultas de forma natural:

Selecciona operación select y esquema public, eligiendo tablas específicas como empleados.
Establece cantidad máxima de registros consultados acorde al tamaño de la base de datos.
Asegúrate de elegir configuraciones recomendadas en caminos de producción e identificación, aunque sea opcional utilizar BetterOut para autenticación.
Mantén siempre activo el flujo generado, copiando y usando la URL de producción proporcionada por el propio N8N.
¿Por qué es importante utilizar URL de producción siempre activa?
Mantener la URL de producción activa permite conexiones constantes y evitas tener que ejecutar manualmente el flujo cada vez. Esto facilita la interacción continua y efectiva del sistema MCP Server con la base de datos consultada de manera automatizada, ofreciendo mayor agilidad en el acceso y uso de información.