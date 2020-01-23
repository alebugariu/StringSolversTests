(set-option :random-seed 1465)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1327 (str.replace "0" "0" "a")))
 (= ?x1327 "a")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
