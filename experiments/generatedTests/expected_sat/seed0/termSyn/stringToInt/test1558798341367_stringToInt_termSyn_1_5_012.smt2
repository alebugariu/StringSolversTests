(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str5 () String)
(declare-fun tmp_int0 () Int)
(assert
 (let ((?x2858 (str.to.int tmp_str5)))
 (let ((?x1035 (int.to.str tmp_int0)))
 (let ((?x183 (str.to.int ?x1035)))
 (= ?x183 ?x2858)))))
(check-sat)

(get-value (tmp_int0 tmp_str5 ))
(get-info :reason-unknown)

;tmp_int0 = -1
;tmp_str5 = a


