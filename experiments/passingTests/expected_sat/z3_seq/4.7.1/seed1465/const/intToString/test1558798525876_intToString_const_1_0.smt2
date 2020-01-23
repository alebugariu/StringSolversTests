(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x646 (int.to.str tmp_int0)))
 (= ?x646 "0")))
(check-sat)

(get-value (tmp_int0 ))
(get-info :reason-unknown)

;tmp_int0 = 0


;actual status: sat

;model:
;Int tmp_int0 = 0
