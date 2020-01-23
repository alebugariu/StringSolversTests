(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int1 () Int)
(assert
 (let ((?x229 (str.to.int tmp_str0)))
 (let ((?x972 (str.len tmp_str0)))
 (let ((?x1634 (str.++ tmp_str0 tmp_str0)))
 (let ((?x2753 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x978 (str.indexof ?x2753 ?x1634 ?x972)))
 (= ?x978 ?x229)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: sat

;model:
;Int tmp_int1 = -1
;String tmp_str0 = A
