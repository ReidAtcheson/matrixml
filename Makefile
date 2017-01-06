


propcheck.native : propcheck.ml
	ocamlbuild propcheck.native


.PHONY : clean


clean :
	ocamlbuild -clean
