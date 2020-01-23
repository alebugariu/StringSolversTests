(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun result () Int)
(declare-fun offset () Int)
(declare-fun t () String)
(declare-fun s () String)
(assert
 (= (str.indexof s t offset) result))
(check-sat)

(get-info :reason-unknown)

;s = 
;t = 
;offset = -1
;result = -1
;actual status: unsat
;I0818 17:36:20.633817  2725 main.cpp:204] Done solving
;I0818 17:36:20.633875  2725 main.cpp:352] report is_sat: UNSAT time: 95.517 ms
;I0818 17:36:20.633913  2725 main.cpp:353] report count: 0 time: 0
;I0818 17:36:20.633919  2725 main.cpp:356] done.
