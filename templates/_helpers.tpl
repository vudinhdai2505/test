{{/*
Create the name of the service account to use
*/}}
{{- define "telegraf.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "telegraf.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{- define "telegraf.labels" -}}
app.kubernetes.io/name: {{ .Values.label.name }}
app.kubernetes.io/instance: {{ .Values.label.instance }}
{{- end }}