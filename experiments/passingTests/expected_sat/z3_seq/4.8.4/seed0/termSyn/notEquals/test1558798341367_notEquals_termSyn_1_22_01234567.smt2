(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_str16 () String)
(declare-fun tmp_int4 () Int)
(assert
 (let (($x343 (str.contains tmp_str16 tmp_str0)))
 (let ((?x1278 (str.substr tmp_str0 tmp_int4 tmp_int4)))
 (let ((?x1634 (str.++ tmp_str0 tmp_str0)))
 (let (($x883 (= ?x1634 ?x1278)))
 (= $x883 $x343))))))
(check-sat)

(get-value (tmp_str0 tmp_int4 tmp_str16 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int4 = -1
;tmp_str16 = 


;actual status: sat

;model:
;Int tmp_int4 = -1
;String tmp_str0 = \x00
;String tmp_str16 = 
