(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str5 () String)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun tmp_str6 () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(assert  
 (not (= (str.replace s t u) result)))
(assert  
 (and (= (str.replace s tmp_str5 tmp_str6) s_fresh) (= (str.contains s tmp_str5) false)))
(assert  
 (and (= (str.indexof s_fresh t 0) index) (ite (>= index 0) (and (and (= (str.++ (str.++ s1 s2) s3) s_fresh) (and (= (str.len s1) index) (= (= s2 t) true))) (= (str.++ (str.++ s1 u) s3) result)) (= (= result s_fresh) true))))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;u = NO VALUE
;result = NO VALUE
;tmp_str5 = NO VALUE
;tmp_str6 = NO VALUE
;s_fresh = NO VALUE
;index = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 a2 
