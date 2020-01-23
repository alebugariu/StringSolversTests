(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x2582 (str.to.int tmp_str2)))
 (let ((?x644 (str.replace tmp_str2 tmp_str2 tmp_str2)))
 (let ((?x348 (int.to.str tmp_int0)))
 (let ((?x2122 (str.indexof ?x348 ?x644 ?x2582)))
 (= ?x2122 ?x2582))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str2 = 
