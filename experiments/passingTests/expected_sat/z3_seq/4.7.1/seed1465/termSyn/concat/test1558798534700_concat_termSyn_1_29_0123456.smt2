(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str10 () String)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x838 (str.at tmp_str2 tmp_int0)))
 (let ((?x1823 (int.to.str tmp_int0)))
 (let ((?x618 (str.++ ?x1823 ?x838)))
 (= ?x618 (str.replace tmp_str2 tmp_str2 tmp_str10))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str10 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str10 = 


;actual status: sat

;model:
;Int tmp_int0 = 4
;String tmp_str2 = \x00
;String tmp_str10 = 4
