(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str1 () String)
(declare-fun tmp_int1_fresh () Int)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun s2 () String)
(declare-fun index () Int)
(assert  
 (and (= (str.indexof s t tmp_int1_fresh) index) (ite (>= index tmp_int1_fresh) (and (and (= (str.++ (str.++ s1 s2) s3) s) (and (= (str.len s1) index) (= (= s2 t) true))) (= (str.++ (str.++ s1 u) s3) result)) (= (= result s) true))))
(assert  
 (not (= (str.replace s t u) result)))
(assert  
 (and (= (str.len tmp_str1) tmp_int1_fresh) (= (= tmp_str1 "") true)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;u = NO VALUE
;result = NO VALUE
;tmp_str1 = NO VALUE
;tmp_int1_fresh = 0
;index = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a1 a2 
;actual status: unsat
