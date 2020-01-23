(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s3 () String)
(declare-fun s3_fresh () String)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(assert (! 
 (and (= (str.at s3 0) s3_fresh) (= (str.len s3) 1)) :named a1))
(assert (! 
 (let (($x138 (= result s)))
 (let (($x139 (= $x138 true)))
 (let (($x130 (= s2 t)))
 (let (($x131 (= $x130 true)))
 (let ((?x128 (str.len s1)))
 (let (($x129 (= ?x128 index)))
 (let (($x132 (and $x129 $x131)))
 (let (($x1102 (and (and (= (str.++ (str.++ s1 s2) s3_fresh) s) $x132) (= (str.++ (str.++ s1 u) s3_fresh) result))))
 (let (($x121 (>= index 0)))
 (let ((?x118 (str.indexof s t 0)))
 (let (($x120 (= ?x118 index)))
 (and $x120 (ite $x121 $x1102 $x139))))))))))))) :named a2))
(assert (! 
 (let ((?x115 (str.replace s t u)))
 (let (($x116 (= ?x115 result)))
 (not $x116))) :named a0))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;u = NO VALUE
;result = NO VALUE
;s3 = NO VALUE
;index = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3_fresh = NO VALUE

;unsat core: a0 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
