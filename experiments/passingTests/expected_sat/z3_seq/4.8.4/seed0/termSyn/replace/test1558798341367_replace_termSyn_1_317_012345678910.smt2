(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int8 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1696 (str.substr tmp_str0 tmp_int8 tmp_int8)))
 (let ((?x50 (int.to.str tmp_int8)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x635 (str.replace ?x130 ?x130 ?x50)))
 (= ?x635 ?x1696))))))
(check-sat)

(get-value (tmp_str0 tmp_int8 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int8 = -1


;actual status: sat

;model:
;String tmp_str0 = \x00\x00\x003
;Int tmp_int8 = 3
