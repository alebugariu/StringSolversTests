(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at tmp_str0 0) "\n"))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = \n
;actual status: unsat
;I0818 17:36:18.613813  2674 main.cpp:352] report is_sat: UNSAT time: 1.51619 ms
;I0818 17:36:18.613833  2674 main.cpp:353] report count: 0 time: 0
;I0818 17:36:18.613840  2674 main.cpp:356] done.
