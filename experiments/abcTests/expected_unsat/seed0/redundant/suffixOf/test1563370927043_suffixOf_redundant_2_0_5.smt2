(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str1 () String)
(declare-fun t1 () String)
(declare-fun t1_fresh () String)
(declare-fun tmp_str2 () String)
(declare-fun t () String)
(declare-fun s () String)
(assert  
 (and (= (str.replace t1 tmp_str1 tmp_str2) t1_fresh) (= (str.indexof t1 tmp_str1 0) (- 1))))
(assert  
 (not (= (str.suffixof s t) true)))
(assert  
 (= (str.++ t1_fresh s) t))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str2 = NO VALUE
;t1_fresh = NO VALUE

;unsat core: a0 a2 
