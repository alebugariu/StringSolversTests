(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x309 (int.to.str tmp_int0)))
 (let ((?x2573 (str.++ ?x309 ?x309)))
 (= ?x2573 ?x309))))
(check-sat)

(get-value (tmp_int0 ))
(get-info :reason-unknown)

;tmp_int0 = -1


;actual status: sat
;((tmp_int0 (- 1)))

;model:
;Int tmp_int0 = -1
