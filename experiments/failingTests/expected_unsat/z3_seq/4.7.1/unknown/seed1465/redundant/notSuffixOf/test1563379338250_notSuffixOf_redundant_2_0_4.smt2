(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun t () String)
(assert (! 
 (forall ((t1_fresh String) (t2 String) (t1 String) (tmp_str3 String) (tmp_str5 String) )(let (($x197 (= (str.contains t1 tmp_str3) false)))
 (let (($x1312 (=> $x197 (= (str.replace t1 tmp_str3 tmp_str5) t1_fresh))))
 (=> (and $x1312 (= (str.++ t1_fresh t2) t)) (= (= t2 s) false)))))
  :named a1))
(assert (! 
 (let (($x1144 (str.suffixof s t)))
 (let (($x562 (= $x1144 false)))
 (not $x562))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE

;unsat core: a0 a1 

;actual status: unknown
;(:reason-unknown "(incomplete quantifiers)")
