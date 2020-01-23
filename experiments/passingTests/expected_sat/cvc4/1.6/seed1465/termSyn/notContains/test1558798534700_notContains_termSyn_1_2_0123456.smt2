(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2149 (str.at tmp_str0 tmp_int1)))
 (let (($x219 (str.contains ?x2149 ?x2008)))
 (= $x219 (str.contains tmp_str14 tmp_str0))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 tmp_str14 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;tmp_str14 = 


;actual status: sat

;model:
;Int tmp_int1 = -1
;String tmp_str0 = A
;String tmp_str14 = 
