(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_str3 () String)
(declare-fun s () String)
(declare-fun t () String)
(declare-fun tmp_bool1_fresh () Bool)
(assert (! 
 (let (($x458 (str.contains tmp_str3 tmp_str1)))
 (let (($x459 (= $x458 false)))
 (let (($x461 (str.suffixof tmp_str1 tmp_str3)))
 (let (($x462 (= $x461 tmp_bool1_fresh)))
 (and $x462 $x459))))) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(! (let (($x1421 (= (str.++ t1 t2) t)))
 (=> $x1421 (= (= t2 s) tmp_bool1_fresh))) :pattern ( (str.++ t1 t2) )))
  :named a2))
(assert (! 
 (let (($x464 (str.suffixof s t)))
 (let (($x1946 (= $x464 false)))
 (not $x1946))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str3 = NO VALUE
;tmp_bool1_fresh = false

;unsat core: a0 a1 a2 

;actual status: unsat
