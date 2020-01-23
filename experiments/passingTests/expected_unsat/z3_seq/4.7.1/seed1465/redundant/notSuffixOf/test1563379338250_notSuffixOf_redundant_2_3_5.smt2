(set-option :random-seed 1465)
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
 (let ((?x2054 (str.indexof ?x351 tmp_str3 0)))
 (let (($x2055 (= ?x2054 (- 1))))
 (let ((?x2040 (str.replace ?x351 tmp_str3 tmp_str4)))
 (let (($x2041 (= ?x2040 ?x351)))
 (and $x2041 $x2055)))))) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(let (($x1239 (= (str.++ t1 t2) t)))
 (=> $x1239 (= (= t2 s) false))))
  :named a2))
(assert (! 
 (let (($x1144 (str.suffixof s t)))
 (let (($x562 (= $x1144 false)))
 (not $x562))) :named a0))
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

;actual status: unsat
