kubeconform:
	helm template test-chart | kubeconform -strict -schema-location default -schema-location "https://raw.githubusercontent.com/datreeio/CRDs-catalog/main/{{.Group}}/{{.ResourceKind}}_{{.ResourceAPIVersion}}.json"

test:
	echo "Hello World" > test
	