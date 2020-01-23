(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str16 () String)
(declare-fun tmp_str0 () String)
(assert
 (let (($x2287 (= tmp_str0 tmp_str16)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2008 (str.++ tmp_str0 tmp_str0)))
 (let (($x1922 (str.suffixof ?x2008 ?x1783)))
 (= $x1922 $x2287))))))
(check-sat)

(get-value (tmp_str0 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_str16 = 


