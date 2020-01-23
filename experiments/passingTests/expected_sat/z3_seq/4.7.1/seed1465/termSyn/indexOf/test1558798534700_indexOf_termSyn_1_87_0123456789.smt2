(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int5 () Int)
(assert
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x1493 (str.indexof tmp_str0 tmp_str0 tmp_int5)))
 (let ((?x52 (str.at tmp_str0 tmp_int5)))
 (let ((?x1783 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x2607 (str.indexof ?x1783 ?x52 ?x1493)))
 (= ?x2607 ?x1907)))))))
(check-sat)

(get-value (tmp_str0 tmp_int5 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int5 = -1


;actual status: sat

;model:
;Int tmp_int5 = -9591
;String tmp_str0 = \x9a\x00
