(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x1529 (str.replace tmp_str2 tmp_str2 tmp_str2)))
 (let ((?x309 (int.to.str tmp_int0)))
 (let ((?x1877 (str.++ ?x309 ?x1529)))
 (= ?x1877 ?x1529)))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


;actual status: sat
;((tmp_int0 (- 1))
; (tmp_str2 ""))

;model:
;Int tmp_int0 = -1
;String tmp_str2 = 
