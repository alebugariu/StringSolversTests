(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str3 () String)
(declare-fun tmp_str1 () String)
(declare-fun s () String)
(declare-fun t () String)
(declare-fun tmp_bool1_fresh () Bool)
(assert (! 
 (and (= (str.contains tmp_str1 tmp_str3) tmp_bool1_fresh) (= (str.indexof tmp_str1 tmp_str3 0) (- 1))) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(let (($x720 (= (str.++ t1 t2) t)))
 (=> $x720 (= (= t1 s) tmp_bool1_fresh))))
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
;tmp_str1 = NO VALUE
;tmp_str3 = NO VALUE
;tmp_bool1_fresh = false

;unsat core: a0 a1 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
