(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(assert
 (let ((?x15 (str.indexof "a" "a" tmp_int2)))
 (= ?x15 0)))
(check-sat)

(get-value (tmp_int2 ))
(get-info :reason-unknown)

;tmp_int2 = 0


;actual status: sat

;model:
;Int tmp_int2 = 0
