(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x229 (int.to.str tmp_int0)))
 (let ((?x1937 (str.at tmp_str2 tmp_int0)))
 (let ((?x1514 (str.replace ?x229 ?x1937 ?x229)))
 (= ?x1514 (str.++ tmp_str14 tmp_str14))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str14 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str14 = 


;actual status: sat
;((tmp_int0 (- 1))
; (tmp_str2 "")
; (tmp_str14 ""))

;model:
;Int tmp_int0 = -1
;String tmp_str2 = 
;String tmp_str14 = 
