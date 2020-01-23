(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str4 () String)
(declare-fun tmp_str2 () String)
(declare-fun t () String)
(declare-fun s () String)
(declare-fun tmp_bool2_fresh () Bool)
(assert (! 
 (and (= (str.contains tmp_str2 tmp_str4) tmp_bool2_fresh) (= (str.indexof tmp_str2 tmp_str4 0) (- 1))) :named a1))
(assert (! 
 (forall ((s1 String) (s2 String) (s3 String) )(let (($x9 (= (str.++ (str.++ s1 s2) s3) s)))
 (=> $x9 (= (= s2 t) tmp_bool2_fresh))))
  :named a2))
(assert (! 
 (let (($x1059 (str.contains s t)))
 (let (($x245 (= $x1059 false)))
 (not $x245))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;tmp_str2 = NO VALUE
;tmp_str4 = NO VALUE
;tmp_bool2_fresh = false

;unsat core: a0 a1 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
