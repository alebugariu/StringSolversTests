(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun s () String)
(declare-fun s3 () String)
(declare-fun t_fresh () String)
(declare-fun s1 () String)
(declare-fun tmp_str2 () String)
(declare-fun t () String)
(declare-fun tmp_str3 () String)
(assert  
 (and (= (str.replace t tmp_str2 tmp_str3) t_fresh) (= (str.contains t tmp_str2) false)))
(assert  
 (not (= (str.contains s t) true)))
(assert  
 (= (str.++ (str.++ s1 t_fresh) s3) s))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;s1 = NO VALUE
;t_fresh = NO VALUE
;s3 = NO VALUE
;tmp_str2 = NO VALUE
;tmp_str3 = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:47.081923 10361 main.cpp:292] report is_sat: SAT time: 1063.09 ms
;I0815 22:48:47.082053 10361 main.cpp:356] done.
