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
 (and (= (str.replace s tmp_str3 tmp_str4) s_fresh) (= (str.contains s tmp_str3) false)) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(! (=> (= (str.++ t1 t2) t) (= (= t1 s_fresh) false)) :pattern ( (str.++ t1 t2) )))
  :named a2))
(assert (! 
 (let (($x1036 (str.prefixof s t)))
 (let (($x1144 (= $x1036 false)))
 (not $x1144))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;tmp_str3 = NO VALUE
;tmp_str4 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

