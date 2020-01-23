(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x491 (str.substr "\x07" tmp_int1 2)))
 (= ?x491 "\x07")))
(check-sat)

(get-value (tmp_int1 ))
(get-info :reason-unknown)

;tmp_int1 = 0


;actual status: sat

;model:
;Int tmp_int1 = 0
