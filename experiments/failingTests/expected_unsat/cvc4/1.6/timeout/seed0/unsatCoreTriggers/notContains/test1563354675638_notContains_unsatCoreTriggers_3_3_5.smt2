(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str4 () String)
(declare-fun t () String)
(declare-fun t_fresh () String)
(declare-fun tmp_str5 () String)
(declare-fun s () String)
(assert (! 
 (let ((?x1069 (str.replace t tmp_str4 tmp_str5)))
 (let (($x1070 (= ?x1069 t_fresh)))
 (and $x1070 (= (str.indexof t tmp_str4 0) (- 1))))) :named a1))
(assert (! 
 (forall ((s1 String) (s2 String) (s3 String) )(! (=> (= (str.++ (str.++ s1 s2) s3) s) (= (= s2 t_fresh) false)) :pattern ( (str.++ (str.++ s1 s2) s3) )))
  :named a2))
(assert (! 
 (let (($x1097 (str.contains s t)))
 (let (($x190 (= $x1097 false)))
 (not $x190))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;tmp_str4 = NO VALUE
;tmp_str5 = NO VALUE
;t_fresh = NO VALUE

;unsat core: a0 a1 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
