.PHONY: all compile clean test eunit dialyzer xref shell doc

REBAR := rebar3

all: compile

compile:
	$(REBAR) compile

clean:
	$(REBAR) clean
	rm -rf _build

test: eunit

eunit:
	$(REBAR) eunit

dialyzer:
	$(REBAR) dialyzer

xref:
	$(REBAR) xref

shell:
	$(REBAR) shell

doc:
	$(REBAR) edoc
