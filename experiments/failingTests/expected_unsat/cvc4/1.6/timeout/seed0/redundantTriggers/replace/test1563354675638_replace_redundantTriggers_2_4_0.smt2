(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s2 () String)
(declare-fun s2_fresh () String)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun index () Int)
(assert (! 
 (and (= (str.at s2 0) s2_fresh) (= (str.len s2) 1)) :named a1))
(assert (! 
 (let (($x138 (= result s)))
 (let (($x139 (= $x138 true)))
 (let ((?x134 (str.++ s1 u)))
 (let ((?x135 (str.++ ?x134 s3)))
 (let (($x136 (= ?x135 result)))
 (let (($x1071 (and (= (str.++ (str.++ s1 s2_fresh) s3) s) (and (= (str.len s1) index) (= (= s2_fresh t) true)))))
 (let (($x121 (>= index 0)))
 (let ((?x118 (str.indexof s t 0)))
 (let (($x120 (= ?x118 index)))
 (and $x120 (ite $x121 (and $x1071 $x136) $x139))))))))))) :named a2))
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
;s2 = NO VALUE
;index = NO VALUE
;s1 = NO VALUE
;s2_fresh = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a2 

;actual status: timeout
;(error "Cannot get an unsat core unless immediately preceded by UNSAT/VALID response.")
;(:reason-unknown timeout)
