(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int5 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1542 (int.to.str tmp_int5)))
 (let ((?x1622 (str.to.int tmp_str0)))
 (let ((?x2328 (int.to.str ?x1622)))
 (= ?x2328 ?x1542)))))
(check-sat)

(get-value (tmp_str0 tmp_int5 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1


;actual status: sat

;model:
;Int tmp_int5 = -1
;String tmp_str0 = 
