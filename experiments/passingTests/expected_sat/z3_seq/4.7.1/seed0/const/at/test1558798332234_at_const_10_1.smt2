(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x103 (str.at "\x07" tmp_int1)))
 (= ?x103 "\x07")))
(check-sat)

(get-value (tmp_int1 ))
(get-info :reason-unknown)

;tmp_int1 = 0


;actual status: sat

;model:
;Int tmp_int1 = 0
