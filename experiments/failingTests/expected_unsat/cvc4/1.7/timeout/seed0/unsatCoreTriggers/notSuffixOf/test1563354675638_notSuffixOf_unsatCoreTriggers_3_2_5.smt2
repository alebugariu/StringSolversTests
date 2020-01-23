(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str3 () String)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun tmp_str4 () String)
(declare-fun t () String)
(assert (! 
 (let ((?x321 (str.indexof s tmp_str3 0)))
 (let (($x324 (= ?x321 (- 1))))
 (let ((?x311 (str.replace s tmp_str3 tmp_str4)))
 (let (($x314 (= ?x311 s_fresh)))
 (and $x314 $x324))))) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(! (let (($x302 (= (str.++ t1 t2) t)))
 (=> $x302 (= (= t2 s_fresh) false))) :pattern ( (str.++ t1 t2) )))
  :named a2))
(assert (! 
 (let (($x1736 (str.suffixof s t)))
 (let (($x1784 (= $x1736 false)))
 (not $x1784))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;tmp_str3 = NO VALUE
;tmp_str4 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
