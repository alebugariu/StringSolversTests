(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int0 () Int)
(declare-fun tmp_str2 () String)
(assert
 (let ((?x1186 (int.to.str tmp_int0)))
 (let ((?x1747 (str.to.int tmp_str2)))
 (let ((?x2727 (str.len tmp_str2)))
 (let ((?x37 (str.substr ?x1186 ?x2727 ?x1747)))
 (= ?x37 ?x1186))))))
(check-sat)

(get-value (tmp_int0 tmp_str2 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str2 = a


