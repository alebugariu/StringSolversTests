(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(assert
 (let ((?x495 (str.indexof "-1" "\n" tmp_int2)))
 (= ?x495 (- 1))))
(check-sat)

(get-value (tmp_int2 ))
(get-info :reason-unknown)

;tmp_int2 = -1


;actual status: sat

;model:
;Int tmp_int2 = 0
