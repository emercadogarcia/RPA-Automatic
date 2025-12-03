
### Instrucciones para Importar en n8n
1. **Copia el JSON**: Selecciona todo el JSON de arriba y cópialo.
2. **En n8n**: Ve a tu instancia de n8n > Workflows > Click en "Import from JSON" (o el botón de importación) > Pega el JSON > Importa.
3. **Configura Credenciales**: 
   - Reemplaza `"your-gmail-cred-id"` y `"your-mysql-cred-id"` con IDs reales de tus credenciales en n8n (crea nuevas si no existen: Settings > Credentials).
   - En "Notificar Éxito" y "Notificar Fallo", actualiza `fromEmail` y `toEmail` con tus direcciones reales.
4. **Manejo de Errores**: Este JSON es el workflow principal. Para el Error Workflow:
   - Crea un nuevo workflow llamado "Error Handler ETL".
   - Agrega un "Error Trigger" como primer nodo (conecta al workflow principal en Settings > Error Workflow).
   - Conecta a "Extraer Error" > "Notificar Fallo".
   - Exporta ese como JSON separado si lo necesitas.
5. **Prueba**: Activa el workflow, envía un email de prueba con un CSV adjunto que match el asunto "Datos Contables". Revisa el Execution Log para debug.
6. **Ajustes**: Si tu esquema de tabla o mapeo es diferente, edita el código JS en "Transformar Datos" o la query SQL en "Insertar en MySQL".

Si hay errores al importar (e.g., versiones de nodos), actualiza n8n a la latest. **¿Qué sigue? ¿Quieres el JSON del Error Workflow, o más detalles sobre el esquema de la tabla?**