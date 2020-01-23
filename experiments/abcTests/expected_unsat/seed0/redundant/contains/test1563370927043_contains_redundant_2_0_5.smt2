(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun t () String)
(declare-fun s1_fresh () String)
(declare-fun tmp_str2 () String)
(declare-fun s1 () String)
(declare-fun tmp_str3 () String)
(assert  
 (and (= (str.replace s1 tmp_str2 tmp_str3) s1_fresh) (= (str.indexof s1 tmp_str2 0) (- 1))))
(assert  
 (not (= (str.contains s t) true)))
(assert  
 (= (str.++ (str.++ s1_fresh t) s3) s))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1_fresh = NO VALUE
;s3 = NO VALUE
;s1 = NO VALUE
;tmp_str2 = NO VALUE
;tmp_str3 = NO VALUE

;unsat core: a0 a1 
