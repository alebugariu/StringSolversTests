(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(assert
 (let ((?x1499 (str.indexof """a""" "" tmp_int2)))
 (= ?x1499 2)))
(check-sat)

(get-value (tmp_int2 ))
(get-info :reason-unknown)

;tmp_int2 = 2


;actual status: sat

;model:
;Int tmp_int2 = 2
