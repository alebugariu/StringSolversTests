(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str16 () String)
(assert
 (let (($x1463 (str.contains tmp_str16 tmp_str0)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let (($x2293 (str.contains ?x1783 ?x2008)))
 (= $x2293 $x1463))))))
(check-sat)

(get-value (tmp_str0 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str16 = 


;actual status: unknown
