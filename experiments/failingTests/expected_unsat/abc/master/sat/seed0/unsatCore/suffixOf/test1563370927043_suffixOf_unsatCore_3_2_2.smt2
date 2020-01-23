(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status unsat)
(declare-fun t_fresh () String)
(declare-fun s () String)
(declare-fun t1 () String)
(declare-fun t () String)
(assert  
 (= (str.++ t1 s) t_fresh))
(assert  
 (not (= (str.suffixof s t) true)))
(assert  
 (= (str.++ "" t) t_fresh))
(check-sat)

(get-unsat-core)
(get-info :reason-unknown)

;s = NO VALUE
;t = NO VALUE
;t1 = NO VALUE
;t_fresh = NO VALUE

;unsat core: a0 a1 a2 
;actual status: sat
;I0815 22:48:11.804091 10303 main.cpp:292] report is_sat: SAT time: 70.0666 ms
;I0815 22:48:11.804126 10303 main.cpp:356] done.
