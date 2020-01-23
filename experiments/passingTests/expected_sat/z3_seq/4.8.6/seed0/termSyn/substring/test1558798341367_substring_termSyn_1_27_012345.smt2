(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (let ((?x129 (int.to.str tmp_int1)))
 (let ((?x1081 (str.to.int tmp_str0)))
 (let ((?x1327 (str.len tmp_str0)))
 (let ((?x972 (str.at tmp_str0 tmp_int1)))
 (let ((?x1007 (str.substr ?x972 ?x1327 ?x1081)))
 (= ?x1007 ?x129)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: sat
;((tmp_str0 "@\x14")
; (tmp_int1 (- 2)))

;model:
;Int tmp_int1 = -2
;String tmp_str0 = @\x14
