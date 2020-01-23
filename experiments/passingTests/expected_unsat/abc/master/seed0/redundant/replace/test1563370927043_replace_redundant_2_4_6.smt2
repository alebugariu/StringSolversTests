(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun s2_fresh () String)
(declare-fun index () Int)
(declare-fun s2 () String)
(assert  
 (= (str.substr s2 0 (str.len s2)) s2_fresh))
(assert  
 (not (= (str.replace s t u) result)))
(assert  
 (and (= (str.indexof s t 0) index) (ite (>= index 0) (and (and (= (str.++ (str.++ s1 s2_fresh) s3) s) (and (= (str.len s1) index) (= (= s2_fresh t) true))) (= (str.++ (str.++ s1 u) s3) result)) (= (= result s) true))))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;u = NO VALUE
;result = NO VALUE
;index = NO VALUE
;s1 = NO VALUE
;s2_fresh = NO VALUE
;s3 = NO VALUE
;s2 = NO VALUE

;unsat core: a0 a1 
;actual status: unsat
