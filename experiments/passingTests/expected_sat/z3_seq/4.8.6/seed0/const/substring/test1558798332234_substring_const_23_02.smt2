(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x394 (str.substr tmp_str0 0 tmp_int2)))
 (= ?x394 "a")))
(check-sat)

(get-value (tmp_str0 tmp_int2 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int2 = 2


;actual status: sat
;((tmp_str0 "a")
; (tmp_int2 2))

;model:
;Int tmp_int2 = 2
;String tmp_str0 = a
