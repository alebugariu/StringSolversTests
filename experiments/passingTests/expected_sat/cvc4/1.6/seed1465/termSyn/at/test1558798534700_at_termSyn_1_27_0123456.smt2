(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int12 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x92 (str.to.int tmp_str0)))
 (let ((?x512 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2503 (str.at ?x512 ?x92)))
 (= ?x2503 (str.substr tmp_str0 tmp_int12 tmp_int12))))))
(check-sat)

(get-value (tmp_str0 tmp_int12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int12 = -1


;actual status: sat

;model:
;String tmp_str0 = 
;Int tmp_int12 = 0
