(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str3 () String)
(declare-fun t2 () String)
(declare-fun t1 () String)
(declare-fun tmp_str4 () String)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (let ((?x351 (str.++ t1 t2)))
 (let ((?x806 (str.replace ?x351 tmp_str3 tmp_str4)))
 (let (($x807 (= ?x806 ?x351)))
 (and $x807 (= (str.indexof ?x351 tmp_str3 0) (- 1)))))) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(=> (= (str.++ t1 t2) t) (= (= t1 s) false)))
  :named a2))
(assert (! 
 (let (($x991 (str.prefixof s t)))
 (let (($x1806 (= $x991 false)))
 (not $x1806))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;t2 = NO VALUE
;tmp_str3 = NO VALUE
;tmp_str4 = NO VALUE

;unsat core: a0 a2 

