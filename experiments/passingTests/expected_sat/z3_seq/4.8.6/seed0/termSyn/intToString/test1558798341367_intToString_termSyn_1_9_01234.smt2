(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int6 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2196 (str.substr tmp_str0 tmp_int6 tmp_int6)))
 (let ((?x1622 (str.to.int tmp_str0)))
 (let ((?x2328 (int.to.str ?x1622)))
 (= ?x2328 ?x2196)))))
(check-sat)

(get-value (tmp_str0 tmp_int6 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int6 = -1


;actual status: sat
;((tmp_str0 "\x04")
; (tmp_int6 2))

;model:
;Int tmp_int6 = 2
;String tmp_str0 = \x04
