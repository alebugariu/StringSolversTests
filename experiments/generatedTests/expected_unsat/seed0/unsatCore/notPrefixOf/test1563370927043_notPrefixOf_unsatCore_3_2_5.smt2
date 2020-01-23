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
 (let ((?x1394 (str.replace s tmp_str3 tmp_str4)))
 (let (($x1395 (= ?x1394 s_fresh)))
 (and $x1395 (= (str.indexof s tmp_str3 0) (- 1))))) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(=> (= (str.++ t1 t2) t) (= (= t1 s_fresh) false)))
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
;tmp_str3 = NO VALUE
;tmp_str4 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 

