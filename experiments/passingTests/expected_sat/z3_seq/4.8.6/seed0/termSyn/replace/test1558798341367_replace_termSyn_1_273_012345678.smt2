(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str20 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x903 (str.++ tmp_str0 tmp_str20)))
 (let ((?x1273 (int.to.str tmp_int5)))
 (let ((?x2463 (str.at tmp_str0 tmp_int5)))
 (let ((?x130 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x329 (str.replace ?x130 ?x2463 ?x1273)))
 (= ?x329 ?x903)))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 tmp_str20 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1
;tmp_str20 = 


;actual status: sat
;((tmp_str0 "\x00\x00")
; (tmp_int5 (- 2))
; (tmp_str20 ""))

;model:
;Int tmp_int5 = -2
;String tmp_str20 = 
;String tmp_str0 = \x00\x00
