(set-option :random-seed 1465)
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
 (let ((?x2455 (str.len tmp_str3)))
 (let ((?x2454 (str.len tmp_str1)))
 (let (($x2456 (= ?x2454 ?x2455)))
 (let (($x2457 (= $x2456 false)))
 (let (($x2452 (= tmp_str1 tmp_str3)))
 (let (($x2453 (= $x2452 tmp_bool1_fresh)))
 (and $x2453 $x2457))))))) :named a1))
(assert (! 
 (forall ((t1 String) (t2 String) )(let (($x1239 (= (str.++ t1 t2) t)))
 (=> $x1239 (= (= t2 s) tmp_bool1_fresh))))
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
;tmp_str1 = NO VALUE
;tmp_str3 = NO VALUE
;tmp_bool1_fresh = false

;unsat core: a0 a1 a2 

