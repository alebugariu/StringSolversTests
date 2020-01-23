(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int13 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x1154 (int.to.str tmp_int13)))
 (let ((?x92 (str.to.int tmp_str0)))
 (let ((?x302 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x1766 (str.at ?x302 ?x92)))
 (= ?x1766 ?x1154))))))
(check-sat)

(get-value (tmp_str0 tmp_int13 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int13 = -1


;actual status: sat

;model:
;String tmp_str0 = 
;Int tmp_int13 = -1
