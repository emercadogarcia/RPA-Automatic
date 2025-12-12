# link clase del curso
https://platzi.com/cursos/n8n-profesional/configuracion-de-agente-de-soporte-con-g/

 Experiencia adaptando la clase de Google Calendar a Microsoft Outlook/Teams con n8n

En la clase se usa Google Calendar, pero lo adapté a Outlook/Teams. El reto fue que los nodos nativos de Microsoft en n8n son limitados (no hyy un campo para los attendees en los eventos) y no permiten trabajar con parámetros avanzados de eventos.

🔑 Principales aprendizajes y decisiones

HTTP Request Tool en lugar de nodos nativos
Para poder crear reuniones en Teams, configuré un tool con el endpoint https://graph.microsoft.com/v1.0/me/events?sendNotifications=true de Microsoft Graph API.
Uso correcto de placeholders (clave de la solución)
No funcionaba usar expresiones JavaScript dentro del JSON del body.
La solución fue declarar un JSON con placeholders ({title}, {descriptionHtml}, {attendeeEmail}, etc.) y luego mapearlos en el propio nodo.
El AI Agent se encarga de enviar los valores de esos placeholders según el mensaje del usuario.
Complemento con disponibilidad
Para enriquecer la automatización, agregué un nodo que consulta la disponibilidad en el calendario (/me/calendar/getschedule) antes de agendar, de modo que se propongan horarios válidos.
⚙️ Resultado El flujo ahora recibe un ticket de soporte, el AI Agent analiza el mensaje y agenda automáticamente una reunión de Teams en Outlook Calendar.

El asunto y la descripción se generan dinámicamente con el contexto del problema.
Se incluye al usuario afectado y en copia a soporte.
El evento se crea con link de Teams listo para unirse.