(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x644 (str.replace tmp_str2 tmp_str2 tmp_str2)))
 (let ((?x348 (int.to.str tmp_int0)))
 (let (($x2591 (str.contains ?x348 ?x644)))
 (= $x2591 (str.contains tmp_str14 tmp_str2))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str14 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str14 = 


;actual status: sat

;model:
;Int tmp_int0 = -1
;String tmp_str2 = aq
;String tmp_str14 = aaB
