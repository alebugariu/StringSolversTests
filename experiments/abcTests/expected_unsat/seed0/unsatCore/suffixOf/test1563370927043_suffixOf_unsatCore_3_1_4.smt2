(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun tmp_str1 () String)
(declare-fun s () String)
(declare-fun s_fresh () String)
(declare-fun tmp_str2 () String)
(declare-fun t () String)
(declare-fun t1 () String)
(assert  
 (and (= (str.replace s tmp_str1 tmp_str2) s_fresh) (= (str.contains s tmp_str1) false)))
(assert  
 (not (= (str.suffixof s t) true)))
(assert  
 (= (str.++ t1 s_fresh) t))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;tmp_str1 = NO VALUE
;tmp_str2 = NO VALUE
;t1 = NO VALUE
;s_fresh = NO VALUE

;unsat core: a0 a1 a2 
