## Unique value use for ease housekeeping
{{- define "migration.housekeeping" -}}
{{ $unique := randAlphaNum 20 }}
{{- printf "%s-%s" .Release.Name $unique | trunc 63 | trimSuffix "-" }}
{{- end }}