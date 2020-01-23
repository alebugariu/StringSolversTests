(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int18 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x2230 (str.substr tmp_str0 tmp_int18 tmp_int18)))
 (let ((?x545 (str.len tmp_str0)))
 (let ((?x1907 (str.to.int tmp_str0)))
 (let ((?x2321 (str.replace tmp_str0 tmp_str0 tmp_str0)))
 (let ((?x752 (str.substr ?x2321 ?x1907 ?x545)))
 (= ?x752 ?x2230)))))))
(check-sat)

(get-value (tmp_str0 tmp_int18 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int18 = -1


