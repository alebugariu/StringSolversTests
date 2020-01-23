(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2119 (str.indexof tmp_str0 tmp_str0 tmp_int1)))
 (let ((?x69 (str.at tmp_str0 tmp_int1)))
 (let ((?x2608 (str.at ?x69 ?x2119)))
 (= ?x2608 (str.++ tmp_str14 tmp_str14))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str14 = 


;actual status: sat
;((tmp_str0 "aaaaaaaUj")
; (tmp_int1 9)
; (tmp_str14 ""))

;model:
;Int tmp_int1 = 9
;String tmp_str0 = aaaaaaaUj
;String tmp_str14 = 
