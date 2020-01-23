(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int3 () Int)
(declare-fun tmp_int2 () Int)
(assert
 (= (str.indexof "\x07" """a""" tmp_int2) tmp_int3))
(check-sat)

(get-value (tmp_int2 tmp_int3 ))
(get-info :reason-unknown)

;tmp_int2 = -1
;tmp_int3 = -1


;actual status: sat
;((tmp_int2 0)
; (tmp_int3 (- 1)))

;model:
;Int tmp_int2 = 0
;Int tmp_int3 = -1
