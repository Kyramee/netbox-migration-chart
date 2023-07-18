## Unique value use for ease housekeeping
{{- define "migration.housekeeping" -}}
  {{- if eq .Values.houskeeping "Changme") -}}
    {{ .Values.houskeeping := randAlphaNum 20 }}
  {{- end -}}
  
  {{ .Values.houskeeping }}
{{- end }}