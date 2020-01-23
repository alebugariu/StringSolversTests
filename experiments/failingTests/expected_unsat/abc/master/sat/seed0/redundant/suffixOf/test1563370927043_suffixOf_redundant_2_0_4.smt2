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
 (not (= (str.suffixof s t) true)))
(assert  
 (= (str.++ t1_fresh s) t))
(assert  
 (and (= (str.replace t1 tmp_str1 tmp_str2) t1_fresh) (= (str.contains t1 tmp_str1) false)))
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
;actual status: sat
;I0815 22:48:02.915647 10223 main.cpp:292] report is_sat: SAT time: 53.0779 ms
;I0815 22:48:02.915688 10223 main.cpp:356] done.
