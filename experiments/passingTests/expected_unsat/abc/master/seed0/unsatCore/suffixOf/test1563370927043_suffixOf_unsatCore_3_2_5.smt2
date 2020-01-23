(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str1 () String)
(declare-fun t () String)
(declare-fun t_fresh () String)
(declare-fun tmp_str2 () String)
(declare-fun s () String)
(declare-fun t1 () String)
(assert  
 (= (str.++ t1 s) t_fresh))
(assert  
 (and (= (str.replace t tmp_str1 tmp_str2) t_fresh) (= (str.indexof t tmp_str1 0) (- 1))))
(assert  
 (not (= (str.suffixof s t) true)))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str2 = NO VALUE
;t1 = NO VALUE
;t_fresh = NO VALUE

;unsat core: a0 a1 a2 
;actual status: unsat
