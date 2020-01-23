(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str8 () String)
(declare-fun tmp_str9 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x309 (int.to.str tmp_int0)))
 (let ((?x2573 (str.++ ?x309 ?x309)))
 (= ?x2573 (str.replace tmp_str9 tmp_str9 tmp_str8)))))
(check-sat)

(get-value (tmp_int0 tmp_str9 tmp_str8 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str9 = a
;tmp_str8 = 


;actual status: sat
;((tmp_int0 10)
; (tmp_str9 "\x00")
; (tmp_str8 "1010"))

;model:
;String tmp_str8 = 1010
;Int tmp_int0 = 10
;String tmp_str9 = \x00
