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
 (let ((?x2040 (str.substr tmp_str0 tmp_int1 tmp_int1)))
 (let ((?x2863 (str.substr ?x2040 ?x1327 ?x1081)))
 (= ?x2863 ?x129)))))))
(check-sat)

(get-value (tmp_str0 tmp_int1 ))
(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1


;actual status: sat
;((tmp_str0 ":T\x1C\x9c\x02\n:l<P\x1A\x02\x00Z\n,:\xac\x04\x08\x1A<\xaaL\x04\x8a\x1C\x1A:J$""\x18Db\x8a\f\x9cL\x8a")
; (tmp_int1 (- 2)))

;model:
;Int tmp_int1 = -2
;String tmp_str0 = :T\x1C\x9c\x02\n:l<P\x1A\x02\x00Z\n,:\xac\x04\x08\x1A<\xaaL\x04\x8a\x1C\x1A:J$""\x18Db\x8a\f\x9cL\x8a
