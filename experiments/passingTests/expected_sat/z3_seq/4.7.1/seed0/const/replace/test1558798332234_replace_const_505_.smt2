(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(assert
 (let ((?x1334 (str.replace "2" "2" """a""")))
 (= ?x1334 """a""")))
(check-sat)

(get-info :reason-unknown)



;actual status: sat
