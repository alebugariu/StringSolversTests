(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str2 () String)
(declare-fun tmp_str14 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x903 (str.replace tmp_str2 tmp_str2 tmp_str2)))
 (let ((?x1035 (int.to.str tmp_int0)))
 (let (($x1482 (str.contains ?x1035 ?x903)))
 (= $x1482 (str.contains tmp_str14 tmp_str2))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 tmp_str14 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a
;tmp_str14 = 


;actual status: sat
;((tmp_int0 0)
; (tmp_str2 "\x00\x00")
; (tmp_str14 ""))

;model:
;Int tmp_int0 = 0
;String tmp_str2 = \x00\x00
;String tmp_str14 = 
