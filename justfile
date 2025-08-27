_default:
	@just -l

update args="":
	primecodegen app-update --dir . {{args}}

generate args="":
	primecodegen app-generate --dir . {{args}}
