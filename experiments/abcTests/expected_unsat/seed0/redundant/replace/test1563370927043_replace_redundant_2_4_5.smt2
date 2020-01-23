(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str5 () String)
(declare-fun s2 () String)
(declare-fun s2_fresh () String)
(declare-fun tmp_str6 () String)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun index () Int)
(assert  
 (not (= (str.replace s t u) result)))
(assert  
 (and (= (str.replace s2 tmp_str5 tmp_str6) s2_fresh) (= (str.indexof s2 tmp_str5 0) (- 1))))
(assert  
 (and (= (str.indexof s t 0) index) (ite (>= index 0) (and (and (= (str.++ (str.++ s1 s2_fresh) s3) s) (and (= (str.len s1) index) (= (= s2_fresh t) true))) (= (str.++ (str.++ s1 u) s3) result)) (= (= result s) true))))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;u = NO VALUE
;result = NO VALUE
;s2 = NO VALUE
;tmp_str5 = NO VALUE
;tmp_str6 = NO VALUE
;index = NO VALUE
;s1 = NO VALUE
;s2_fresh = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a2 
