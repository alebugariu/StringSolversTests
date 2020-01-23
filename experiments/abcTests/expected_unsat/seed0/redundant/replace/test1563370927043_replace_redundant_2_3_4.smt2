(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1_fresh () String)
(declare-fun t () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(declare-fun tmp_str5 () String)
(declare-fun s1 () String)
(declare-fun tmp_str6 () String)
(assert  
 (and (= (str.replace s1 tmp_str5 tmp_str6) s1_fresh) (= (str.contains s1 tmp_str5) false)))
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
;index = NO VALUE
;s1_fresh = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE
;s1 = NO VALUE
;tmp_str5 = NO VALUE
;tmp_str6 = NO VALUE

;unsat core: a0 a1 
