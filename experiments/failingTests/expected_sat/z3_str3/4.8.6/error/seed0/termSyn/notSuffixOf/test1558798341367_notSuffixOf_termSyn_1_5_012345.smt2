(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_str12 () String)
(declare-fun tmp_str0 () String)
(declare-fun tmp_int3 () Int)
(assert
 (let (($x2344 (= tmp_str0 tmp_str12)))
 (let ((?x1385 (int.to.str tmp_int3)))
 (let ((?x1634 (str.++ tmp_str0 tmp_str0)))
 (let (($x2724 (str.suffixof ?x1634 ?x1385)))
 (= $x2724 $x2344))))))
(check-sat)

(get-value (tmp_str0 tmp_int3 tmp_str12 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int3 = -1
;tmp_str12 = 


;actual status: not_implemented
