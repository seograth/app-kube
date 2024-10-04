{{- define "my-flask-app.fullname" -}}
{{- if .Values.fullnameOverride }}
  {{ .Values.fullnameOverride }}
{{- else }}
  {{- $name := default .Chart.Name .Values.nameOverride }}
  {{- printf "%s-%s" $name .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}