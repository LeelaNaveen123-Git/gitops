{{/*
Return the application name.
*/}}
{{- define "sample-app.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Return the full application name.
*/}}
{{- define "sample-app.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "sample-app.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}