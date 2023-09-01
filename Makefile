REBAR=rebar3
GMAKE!=which gmake || which make

get_deps:
	@./build_deps.sh

compile_nif: get_deps
	@${GMAKE} V=0 -C c_src -j 8

clean_nif:
	@${GMAKE} -C c_src clean

compile:
	${REBAR} compile

clean:
	${REBAR} clean
