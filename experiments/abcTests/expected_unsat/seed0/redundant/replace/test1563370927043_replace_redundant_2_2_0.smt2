(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str5 () String)
(declare-fun index () Int)
(declare-fun index_fresh () Int)
(declare-fun s () String)
(declare-fun result () String)
(declare-fun s3 () String)
(declare-fun u () String)
(declare-fun s1 () String)
(declare-fun t () String)
(declare-fun s2 () String)
(assert  
 (and (= (str.indexof tmp_str5 "" index) index_fresh) (and (>= index 0) (<= index (str.len tmp_str5)))))
(assert  
 (not (= (str.replace s t u) result)))
(assert  
 (and (= (str.indexof s t 0) index_fresh) (ite (>= index_fresh 0) (and (and (= (str.++ (str.++ s1 s2) s3) s) (and (= (str.len s1) index_fresh) (= (= s2 t) true))) (= (str.++ (str.++ s1 u) s3) result)) (= (= result s) true))))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;u = NO VALUE
;result = NO VALUE
;tmp_str5 = NO VALUE
;index = NO VALUE
;index_fresh = NO VALUE
;s1 = NO VALUE
;s2 = NO VALUE
;s3 = NO VALUE

;unsat core: a0 a2 
