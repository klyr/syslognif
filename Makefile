REBAR=./rebar

all: deps compile

compile:
	@$(REBAR) compile

deps:
	@$(REBAR) get-deps

clean:
	@$(REBAR) clean

generate:
	@$(REBAR) generate -f

distclean: clean
	@$(REBAR) delete-deps

test: all
	@$(REBAR) skip_deps=true eunit

docs: deps
	@$(REBAR) skip_deps=true doc

.PHONY: deps test
