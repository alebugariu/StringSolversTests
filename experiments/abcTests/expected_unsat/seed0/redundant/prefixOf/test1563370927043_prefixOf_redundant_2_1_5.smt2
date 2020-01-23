(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t () String)
(declare-fun t2_fresh () String)
(declare-fun s () String)
(declare-fun tmp_str1 () String)
(declare-fun t2 () String)
(declare-fun tmp_str2 () String)
(assert  
 (= (str.++ s t2_fresh) t))
(assert  
 (not (= (str.prefixof s t) true)))
(assert  
 (and (= (str.replace t2 tmp_str1 tmp_str2) t2_fresh) (= (str.indexof t2 tmp_str1 0) (- 1))))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t2_fresh = NO VALUE
;t2 = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str2 = NO VALUE

;unsat core: a0 a1 
