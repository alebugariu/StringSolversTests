(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u_fresh () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(declare-fun u () String)
(assert  
 (and (= (str.indexof s t 0) index) (ite (>= index 0) (and (and (= (str.++ (str.++ s1 s2) s3) s) (and (= (str.len s1) index) (= (= s2 t) true))) (= (str.++ (str.++ s1 u_fresh) s3) result)) (= (= result s) true))))
(assert  
 (not (= (str.replace s t u) result)))
(assert  
 (and (= (str.at u 0) u_fresh) (= (str.len u) 1)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;u = NO VALUE
;result = NO VALUE
;index = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE
;u_fresh = NO VALUE

;unsat core: a0 a1 a2 
;actual status: unsat
