(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int3 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.indexof tmp_str0 "" (- 1)) tmp_int3))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = 
;tmp_int3 = -1
;actual status: unsat
;I0818 17:35:50.099020  2194 main.cpp:352] report is_sat: UNSAT time: 53.7665 ms
;I0818 17:35:50.099077  2194 main.cpp:353] report count: 0 time: 0
;I0818 17:35:50.099097  2194 main.cpp:356] done.
