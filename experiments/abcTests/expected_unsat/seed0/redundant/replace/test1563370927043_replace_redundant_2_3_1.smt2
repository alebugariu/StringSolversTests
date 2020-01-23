(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s1_fresh () String)
(declare-fun s1 () String)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun t () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(assert  
 (= (str.++ s1 "") s1_fresh))
(assert  
 (not (= (str.replace s t u) result)))
(assert  
 (and (= (str.indexof s t 0) index) (ite (>= index 0) (and (and (= (str.++ (str.++ s1_fresh s2) s3) s) (and (= (str.len s1_fresh) index) (= (= s2 t) true))) (= (str.++ (str.++ s1_fresh u) s3) result)) (= (= result s) true))))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;u = NO VALUE
;result = NO VALUE
;s1 = NO VALUE
;s1_fresh = NO VALUE
;index = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a2 
