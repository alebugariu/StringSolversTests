(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int2 () Int)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x32 (str.substr tmp_str0 tmp_int1 tmp_int2)))
 (= ?x32 """a")))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_int2 ))
(get-info :reason-unknown)

;tmp_str0 = "a"
;tmp_int1 = 0
;tmp_int2 = 2


;actual status: sat

;model:
;Int tmp_int1 = 2
;Int tmp_int2 = 40
;String tmp_str0 = a7""a
